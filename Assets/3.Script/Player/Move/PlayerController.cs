using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //�̵��ӵ�
    public float roll_Dis = 10f;//������ �Ÿ�
    public float selDelay = 1f;
    private float delay = 0.4f;

    public GameObject labberPos;
    public GameObject[] weapon;

    private Rigidbody player_R;
    private Animator ani;
    Sword sword;

    //�ൿ
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;
    public bool isClimb = false;
    public bool isClimbing = false;
    public bool climbCheck = false;

    private float closeDistance = 0.25f;

    [SerializeField] PlayerInput playerinput;
    [SerializeField] Camera main;

    public float rotationSpeed=5f;
    public GameObject cursor;

    public GameObject[] weaponLayer;
    void Start()
    {
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
    }

    public void ChangeLayersRecursively()
    {
        foreach (Transform child in transform)
        {
            child.gameObject.layer = 6;
            if(child.gameObject.transform.name=="Slash_Roll"||child.gameObject.transform.name=="Slash_Heavy_R"||child.gameObject.transform.name=="Slash_Heavy_L"||child.gameObject.transform.name=="Slash_light_R"||child.gameObject.transform.name=="Slash_light_L")
            {
                child.gameObject.layer = 0;
            }
        }

        for(int i=0;i<weaponLayer.Length;i++)
        {
            weaponLayer[i].gameObject.layer = 6;
        }
    }

    public void ReChangeLayersRecursively()
    {
        foreach (Transform child in transform)
        {
            child.gameObject.layer = 0;            
        }

        for(int i=0;i<3;i++)
        {
            weapon[i].gameObject.layer=0;
        }
    }
    private void FixedUpdate()
    {
        Lookat();
        Climb_MoveKey();
    }
    public void Lookat()
    {
        if (!isRoll)
        {
            Ray cameraRay = main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;
            // if (Physics.Raycast(cameraRay, out RaycastHit h))
            // {
            //     hitpoint = h.point;
            //     hitpoint.y = transform.position.y;
            // }

            if (Physics.Raycast(cameraRay, out RaycastHit h)&&h.collider.gameObject.layer!=2)
            {
                Vector3 targetDir=h.point-transform.position;
                targetDir.y=0f;
                if(Input.GetMouseButtonDown(2))
                {
                    Quaternion targetRotation=Quaternion.LookRotation(targetDir);
                    transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, rotationSpeed * Time.deltaTime);
                }
                hitpoint = h.point;
                cursor.transform.position = new Vector3(hitpoint.x, hitpoint.y, hitpoint.z);
                
                
                
            }
            Vector3 offset = hitpoint - transform.position;
            float sqrLen = offset.sqrMagnitude;
            if (!isRun && (sqrLen > closeDistance * closeDistance))
            {
                if (playerinput.isLight)
                {
                    transform.LookAt(hitpoint);
                }
                if (playerinput.isStrong)
                {
                    transform.LookAt(hitpoint);
                }
                if (playerinput.isSkill_start)
                {
                    transform.LookAt(hitpoint);
                }
            }
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Ladder_Top") && isClimb)
        {
            ani.SetTrigger("Climb_Top");
            ani.SetBool("Climb_Up", isClimb);
            this.transform.Translate(0, 0.9f, 0.02f);
            isClimb = false;
            climbCheck = false;
            playerinput.isLock = false;
            this.transform.Translate(0, 0.02f, 0.02f);
        }

        if (other.CompareTag("Ladder_Bottom") && isClimb)
        {
            ani.SetTrigger("Climb_Bottom");
            isClimb = false;
            player_R.velocity = Vector3.zero;
            climbCheck = false;
            playerinput.isLock = false;            
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Ladder") && playerinput.isInteraction && !isClimb)
        {
            if (!climbCheck)
            {
                transform.position = other.gameObject.GetComponentsInParent<Transform>()[1].position;
                transform.rotation = other.gameObject.GetComponentsInParent<Transform>()[1].rotation;
                this.transform.Translate(0, 0.05f, 0);
            }
            playerinput.isLock = false;
            isClimb = true;
            ani.SetTrigger("Climb");
            climbCheck = true;
        }
    }
    private void Climb_MoveKey()
    {
        if (isClimb)
        {
            isClimbing = false;
            ani.SetBool("Climb_Up", isClimbing);
            ani.SetBool("Climb_Down", isClimbing);
            Physics.gravity = new Vector3(0, 0, 0);
            if (Input.GetKey(KeyCode.W))
            {
                isClimbing = true;
                this.transform.Translate(0, 2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Up", isClimbing);
                

            }
            if (Input.GetKey(KeyCode.S))
            {
                isClimbing = true;
                this.transform.Translate(0, -2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Down", isClimbing);

            }
            else
            {
                ani.SetTrigger("Climb");
            }
        }

        else
        {
            Physics.gravity = new Vector3(Physics.gravity.x, -9.81f, Physics.gravity.z);
        }
    }
}
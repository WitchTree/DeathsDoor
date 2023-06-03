using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //이동속도
    public float roll_Dis = 10f;//구르는 거리
    public float selDelay = 1f;
    private float delay = 0.4f;

    private Rigidbody player_R;
    private Animator ani;
    Sword sword;

    //행동
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;
    public bool isLock = false;


    public bool isClimb = false;
    public bool isClimbing = false;
    public bool climbCheck = false;

    private float closeDistance = 0.25f;

    [SerializeField] PlayerInput playerinput;
    [SerializeField] Camera main;

    void Start()
    {
        sword = GetComponent<Sword>();
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
    }

    public void ChangeLayersRecursively()
    {
        foreach (Transform child in transform)
        {
            child.gameObject.layer = 6;
        }
    }

    private void FixedUpdate()
    {
        Lookat();
        Run();
        Roll();
        Climb_MoveKey();
    }


    private void Run()
    {
        isRun = false;
        if ((playerinput.Move_Value != 0 || playerinput.Rotate_Value != 0) && !isRoll && !sword.isAtk && !isClimb /*&& !playerDamage.isSuffer*/)//구르기 x,공격x, 피격X
        {
            //sword.DebugInvoke();
            Vector3 velocity = new Vector3(playerinput.Rotate_Value, 0, playerinput.Move_Value).normalized;
            transform.position += velocity * speed * Time.deltaTime;
            isRun = true;
            transform.LookAt(transform.position + velocity);
            ani.SetBool("Run", isRun);
        }
        ani.SetBool("Run", isRun);

    }
    public void Roll()
    {
        if (playerinput.isRoll && !isRoll && !sword.isAtk)
        {
            StartCoroutine("Roll_co");
        }
    }
    private IEnumerator Roll_co()
    {
        delay = selDelay;
        isRoll = true;
        Vector3 roll_Dir = transform.forward;
        player_R.velocity = Vector3.zero;
        player_R.AddForce(roll_Dir * roll_Dis, ForceMode.VelocityChange);
        ani.SetTrigger("RollTrigger");
        sword.RollAtk();
        yield return new WaitForSeconds(delay);
        player_R.velocity = Vector3.zero;
        isRoll = false;
    }

    public void Lookat()
    {
        if (!isRoll || !sword.isAtk)
        {
            Ray cameraRay = main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;
            if (Physics.Raycast(cameraRay, out RaycastHit h))
            {
                hitpoint = h.point;
                hitpoint.y = transform.position.y;
            }
            Vector3 offset = hitpoint - transform.position;
            float sqrLen = offset.sqrMagnitude;
            if (!isRun && (sqrLen > closeDistance * closeDistance) && !isClimb)
            {
                if (playerinput.isLight)
                {
                    transform.LookAt(hitpoint);
                    sword.Atk();
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
            isClimb = false;
            player_R.velocity = Vector3.zero;
            playerinput.isLock = false;
            ani.SetTrigger("Climb_Bottom");
            climbCheck = false;
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Ladder") && playerinput.isInteraction && !isClimb)
        {
            if (!climbCheck)
            {
                Debug.Log(other.gameObject.GetComponentsInParent<Transform>()[1].position);
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
            else if (Input.GetKey(KeyCode.S))
            {
                isClimbing = true;
                this.transform.Translate(0, -2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Down", isClimbing);
                Debug.Log(playerinput.isLock);
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
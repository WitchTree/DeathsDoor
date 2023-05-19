using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //이동속도
    public float roll_Dis = 10f;//구르는 거리
    public float selDelay = 1f;
    private float delay = 0f;
    public int skill = 4; // 스킬 수
    public int life = 4;
    public int seed = 2;//씨앗 

    private Rigidbody player_R;
    private Animator ani;

    //행동
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;

    [SerializeField] private GameObject cursor;
    public Transform swordPivot;
    public Transform leftHandMount;



    //public GameObject Tester;

    void Start()
    {
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
    }

    void Update()
    {
        Run();
        Roll();
        Lookat();
    }

    private void Run()
    {
        float inputX = Input.GetAxis("Horizontal");
        float inputZ = Input.GetAxis("Vertical");

        isRun = false;

        if ((inputX != 0 || inputZ != 0) && !isRoll && !isAtk)//구르기 x,공격x
        {
            Vector3 velocity = new Vector3(inputX, 0, inputZ);
            velocity *= speed;
            player_R.velocity = velocity;
            isRun = true;

            transform.LookAt(transform.position + velocity);
        }
        ani.SetBool("Run", isRun);
    }

    public void Roll()
    {
        if (Input.GetKeyDown(KeyCode.Space) && !isRoll && !isAtk)
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

        ani.SetBool("Roll", isRoll);

        yield return new WaitForSeconds(delay);
        player_R.velocity = Vector3.zero;

        isRoll = false;
        ani.SetBool("Roll", isRoll);

    }

    private void OnAnimatorIK(int layerIndex)
    {
        swordPivot.position = ani.GetIKHintPosition(AvatarIKHint.LeftElbow);


        ani.SetIKPositionWeight(AvatarIKGoal.LeftHand, 1.0f);
        ani.SetIKRotationWeight(AvatarIKGoal.LeftHand, 1.0f);
       
        ani.SetIKPosition(AvatarIKGoal.LeftHand, leftHandMount.position);
        ani.SetIKRotation(AvatarIKGoal.LeftHand, leftHandMount.rotation);
    }

    public void Lookat()
    {
        if (!isRoll)
        {
            Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;            

            if (Physics.Raycast(cameraRay, out RaycastHit h))
            {
                hitpoint = h.point;
                cursor.transform.position = new Vector3(hitpoint.x, hitpoint.y + 0.1f,hitpoint.z);
                
            }
            //gb.transform.position = hitpoint;

            if (Input.GetKey(KeyCode.Mouse0) || Input.GetKey(KeyCode.Mouse1) || Input.GetKey(KeyCode.Mouse2))//조건 공격 만들때 수정할게요~~
            {
                transform.LookAt(hitpoint);
            }
        }
    }

    public void Attack()
    {
        if (Input.GetKey(KeyCode.Mouse0))
        {
            isAtk = true;
            ani.SetBool("Attack", isAtk);
        }
    }


}


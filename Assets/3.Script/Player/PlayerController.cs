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

    void Start()
    {
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
    }

    void Update()
    {
        Run();
        Roll();
        RayRotate();
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

    public void RayRotate()
    {
        if (!isRoll)
        {
            Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            Plane GroupPlane = new Plane(Vector3.up, Vector3.zero);
            float rayLength;
            if (GroupPlane.Raycast(cameraRay, out rayLength))
            {
                Vector3 pointTolook = cameraRay.GetPoint(rayLength);

                if (Input.GetKey(KeyCode.Mouse0) || Input.GetKey(KeyCode.Mouse1) || Input.GetKey(KeyCode.Mouse2))
                {
                    isAtk = true;
                    player_R.velocity = Vector3.zero;
                    transform.LookAt(new Vector3(pointTolook.x, transform.position.y, pointTolook.z));
                }
                else
                {
                    isAtk = false; // 나중에 공격을 만들면 가져갈게요~~ _0517
                }
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


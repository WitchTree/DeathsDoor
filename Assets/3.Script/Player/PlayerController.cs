using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //�̵��ӵ�
    public float roll_Dis = 10f;//������ �Ÿ�
    public float selDelay = 1f;
    private float delay = 0f;
    public int skill = 4; // ��ų ��
    public int life = 4;
    public int seed = 2;//���� 

    private Rigidbody player_R;
    private Animator ani;

    //�ൿ
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;

    [SerializeField] private GameObject cursor;
   

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

    private Vector3 AdjustVelocityToSlope(Vector3 velocity)
    {
        var ray=new Ray(transform.position,Vector3.down);
        if(Physics.Raycast(ray,out RaycastHit hitInfo,0.2f))
        {
            var slopeRotation=Quaternion.FromToRotation(Vector3.down,hitInfo.normal);
            var adjustedVelocity=slopeRotation*velocity;

            if(adjustedVelocity.y<0)
            {
                return adjustedVelocity;
            }
        }
        return velocity;
    }


    private void Run()
    {
        float inputX = Input.GetAxis("Horizontal");
        float inputZ = Input.GetAxis("Vertical");

        isRun = false;

        if ((inputX != 0 || inputZ != 0) && !isRoll && !isAtk)//������ x,����x
        {
            Vector3 velocity = new Vector3(inputX, 0, inputZ);
            velocity *= speed;
            player_R.velocity = AdjustVelocityToSlope(velocity);;
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

    public void Lookat()
    {
        if (!isRoll)
        {
            Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;

            if (Physics.Raycast(cameraRay, out RaycastHit h))
            {
                hitpoint = h.point;
                cursor.transform.position = new Vector3(hitpoint.x, hitpoint.y + 0.1f, hitpoint.z);

            }
            //gb.transform.position = hitpoint;

            if (Input.GetKey(KeyCode.Mouse0) || Input.GetKey(KeyCode.Mouse1) || Input.GetKey(KeyCode.Mouse2))//���� ���� ���鶧 �����ҰԿ�~~
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


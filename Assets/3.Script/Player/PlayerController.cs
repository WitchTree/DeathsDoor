using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    [SerializeField] Camera main;
    [SerializeField] PlayerInput playerInput;

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

        isRun = false;

        if ((playerInput.Move_Value != 0 || playerInput.Rotate_Value != 0) && !isRoll && !isAtk)//������ x,����x
        {
            Vector3 velocity = new Vector3(playerInput.Rotate_Value, 0, playerInput.Move_Value);
            velocity *= speed;
            player_R.velocity = velocity;
            isRun = true;

            transform.LookAt(transform.position + velocity);
        }
        ani.SetBool("Run", isRun);
    }

    public void Roll()
    {
        if (playerInput.isRoll && !isRoll && !isAtk)
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
            Ray cameraRay = main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;
            if (Physics.Raycast(cameraRay, out RaycastHit h))
            {
                hitpoint = h.point;
            }

            if (playerInput.isLight || playerInput.isStrong || playerInput.isSkill_start)//���� ���� ���鶧 �����ҰԿ�~~
            {
                transform.LookAt(hitpoint);
            }
        }
    }



    

    

}


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

    private float closeDistance = 1.0f;

    private Rigidbody player_R;
    private Animator ani;
    Sword sword;

    //�ൿ
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;

    [SerializeField] PlayerInput playerinput;
    [SerializeField] Camera main;
    void Start()
    {
        sword = GetComponent<Sword>();
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
    }

    private void FixedUpdate()
    {
        Run();
        Roll();
        //RayRotate();
        Lookat();
    }

    private void Run()
    {
        isRun = false;
        //sword.swordRighthand.SetActive(false);
        //sword.swordBack.SetActive(true);
        if ((playerinput.Move_Value !=0 || playerinput.Rotate_Value != 0) && !isRoll && !isAtk)//������ x,����x
        {
            Vector3 velocity = new Vector3(playerinput.Rotate_Value, 0, playerinput.Move_Value);
            velocity *= speed;
            player_R.velocity = velocity;
            isRun = true;

            transform.LookAt(transform.position + velocity);
        }
        ani.SetBool("Run", isRun);
    }

    public void Roll()
    {
        if (playerinput.isRoll && !isRoll && !isAtk)
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
            Vector3 offset = hitpoint - transform.position;
            float sqrLen = offset.sqrMagnitude;
            if ((playerinput.AtkLook || playerinput.isStrong || playerinput.isBow) && !isRun && (sqrLen > closeDistance * closeDistance))//���� ���� ���鶧 �����ҰԿ�~~
            {
                transform.LookAt(hitpoint);
            }
        }
    }


}
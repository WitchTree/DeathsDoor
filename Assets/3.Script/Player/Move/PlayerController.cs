using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //이동속도
    public float roll_Dis = 10f;//구르는 거리
    public float selDelay = 1f;
    private float delay = 0f;


    private Rigidbody player_R;
    private Animator ani;
    Sword sword;

    //행동
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;

    private float closeDistance = 1.0f;


    [SerializeField] private GameObject cursor;

    PlayerOnDamage playerDamage;
    [SerializeField] PlayerInput playerinput;
    [SerializeField] Camera main;
    void Start()
    {
        sword = GetComponent<Sword>();
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
        playerDamage = GetComponent<PlayerOnDamage>();
    }

    private void FixedUpdate()
    {
        Run();
        Roll();
        Lookat();

    }
    private void Run()
    {
        isRun = false;
        if ((playerinput.Move_Value != 0 || playerinput.Rotate_Value != 0) && !isRoll && !isAtk /*&& !playerDamage.isSuffer*/)//구르기 x,공격x, 피격X
        {
            Vector3 velocity = new Vector3(playerinput.Rotate_Value, 0, playerinput.Move_Value).normalized;
            transform.position += velocity * speed * Time.deltaTime;
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
        ani.SetTrigger("RollTrigger");
        sword.RollAtk();
        yield return new WaitForSeconds(delay);
        player_R.velocity = Vector3.zero;
        isRoll = false;
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
                hitpoint.y = transform.position.y;
                cursor.transform.position = new Vector3(hitpoint.x, hitpoint.y + 0.1f, hitpoint.z);
            }
            Vector3 offset = hitpoint - transform.position;
            float sqrLen = offset.sqrMagnitude;
            if ((playerinput.AtkLook || playerinput.isStrong || playerinput.isBow || playerinput.isSkill_start) && !isRun && (sqrLen > closeDistance * closeDistance))//조건 공격 만들때 수정할게요~~
            {
                transform.LookAt(hitpoint);
            }
        }
    }
}
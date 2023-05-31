using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    [Header("필요한 것들 넣어주세요~~~")]
    [SerializeField] GameObject lightAtk; //일반
    [SerializeField] GameObject heavyAtk; // 차징
    [SerializeField] GameObject Player; //플레이어
    [SerializeField] public GameObject swordBack; //등뒤의 칼
    [SerializeField] public GameObject swordRighthand; //오른손의 칼
    [SerializeField] public GameObject swordLefthand; //왼손의 칼
    [SerializeField] public GameObject LightSlash; //평타 슬래쉬 오브젝트
    [SerializeField] public GameObject StrongSlash; //차징 슬래쉬 오브젝트
    [SerializeField] private PlayerInput playerinput;

    public enum Hand
    {
        RightHand,
        LeftHand
    }
    public enum State
    {
        Idle,
        Combo,
        Charging
    }
    public Hand hand { get; private set; }
    public State state { get; private set; }
    private int atkCnt;//1,2,3타를 위한 변수
    private bool isAtk = false;
    private bool isCombo = false;
    private bool isLeft = false;

    Animator ani;
    public Sword_Data data; // 소드 데이터

    private void Awake()
    {
        hand = Hand.LeftHand;
        atkCnt = 0;
        ani = GetComponent<Animator>();

    }
    private void FixedUpdate()
    {
        Atk();
        Normalize();
    }
    public void Atk()
    {
        if (atkCnt >= 3)// 공격 3타 이상, 애니메이션 끝난 후
        {
            Debug.Log("공격 안돼!!");
            atkCnt = 0;
            StartCoroutine(Waiting());
            isAtk = false;
            Debug.Log("공격 해!!");
            return;
        }
        else if (playerinput.isLight)
        {
            Debug.Log("공격 스타또");
            if (atkCnt < 3)//공격 중, 애니메이션 끝나기 전, 3타 전까지
            {
                if(!isAtk)
                {
                isAtk = true;
                }
                atkCnt++;
                Debug.Log(atkCnt);
                StartCoroutine(Attacking());
                return;
            }
        }
    }
    public void RollAtk()
    {
        if (playerinput.isStrong)
        {
            swordBack.SetActive(false);
            swordRighthand.SetActive(true);
            swordLefthand.SetActive(false);
            ani.SetTrigger("RollHeavy");
            Debug.Log("롤공격!");
        }
    }
    private IEnumerator Attacking()
    {
        if (hand.Equals(Hand.LeftHand))
        {
            hand = Hand.RightHand;
            swordBack.SetActive(false);
            swordRighthand.SetActive(true);
            swordLefthand.SetActive(false);
            LightSlash.SetActive(true);
        }
        else
        {
            hand = Hand.LeftHand;
            swordBack.SetActive(false);
            swordRighthand.SetActive(false);
            swordLefthand.SetActive(true);
            LightSlash.SetActive(true);
        }
        ani.SetTrigger("SwordCombo(Left)");
        yield return new WaitForSeconds(data.DelayTime);
    }
    private IEnumerator Waiting()
    {
        yield return new WaitForSeconds(data.DelayTime);

    }
    public void Normalize()
    {
        if (ani.GetCurrentAnimatorStateInfo(0).IsName("Idle_1"))
        {
            atkCnt = 0;
            swordBack.SetActive(true);
            swordRighthand.SetActive(false);
            swordLefthand.SetActive(false);
            LightSlash.SetActive(false);
            isAtk = false;
        }
    }
}
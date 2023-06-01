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

    public Hand hand { get; private set; }
    private int atkCnt;//1,2,3타를 위한 변수
    public bool isAtk = false;

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

    }
    public void Atk()
    {
        if (atkCnt > 3)
        {
            Normalize();
        }
        else if (playerinput.isLight)
        {
            if (!isAtk)
            {
                isAtk = true;
                StartCoroutine(Atk_co());
            }
            else
            {
                CancelInvoke("Normalize");
                StartCoroutine(Atk_co());
            }
        }
    }
    public IEnumerator Atk_co()
    {
        atkCnt++;
        SetHand();
        ani.SetInteger("Combo", atkCnt);
        Invoke("Normalize", data.DelayTime);
        yield return null;
    }
    public void SetHand()
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
    }
    public void RollAtk()
    {
        if (playerinput.isStrong)
        {
            swordBack.SetActive(false);
            swordRighthand.SetActive(true);
            swordLefthand.SetActive(false);
            ani.SetTrigger("RollHeavy");
            Invoke("Normalize", data.DelayTime);
        }
    }
    public void Normalize()
    {
        atkCnt = 0;
        swordBack.SetActive(true);
        swordRighthand.SetActive(false);
        swordLefthand.SetActive(false);
        LightSlash.SetActive(false);
        isAtk = false;
        ani.SetInteger("Combo", atkCnt);

        //}
    }
    public void DebugInvoke()
    {
        CancelInvoke("Normalize");
        atkCnt = 0;
        swordBack.SetActive(true);
        swordRighthand.SetActive(false);
        swordLefthand.SetActive(false);
        LightSlash.SetActive(false);
        isAtk = false;
        ani.SetInteger("Combo", 4);
    }
}
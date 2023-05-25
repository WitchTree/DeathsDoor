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
    [SerializeField] private PlayerInput playerinput;

    public enum Hand
    {
        RightHand,
        LeftHand
    }

    public Hand hand { get; private set; }
    private int atkCnt;//1,2,3타를 위한 변수
    private bool isAtk = false;
    private bool isClick = false;

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
    }
    private void Atk()
    {
        if (atkCnt > 3)// 공격 3타 이상, 애니메이션 끝난 후
        {
            atkCnt = 0;
            isAtk = false;
            swordBack.SetActive(true);
            swordRighthand.SetActive(false);
            swordLefthand.SetActive(false);
            StartCoroutine(Attacking());
        }
        else if (playerinput.isLight&&!isClick)
        {
            Debug.Log("공격 스타또");
            if (!isAtk)// 공격중 X
            {
                isAtk = true;
                atkCnt++;
                hand = SetHand(hand);
            }

            else if (isAtk && ani.GetCurrentAnimatorStateInfo(0).normalizedTime <= 1.0f && atkCnt < 3)//공격 중, 애니메이션 끝나기 전, 3타 전까지
            {
                atkCnt++;
                isClick = true;
                Debug.Log(atkCnt);
                Debug.Log("지금은 연속타격이에요");
                hand = SetHand(hand);
                isClick = false;
            }


        }
    }


    private IEnumerator Attacking()
    {
        yield return new WaitForSeconds(data.DelayTime);
    }


    public Hand SetHand(Hand hand)
    {
        if (hand.Equals(Hand.RightHand))
        {
            swordBack.SetActive(false);
            swordLefthand.SetActive(false);
            swordRighthand.SetActive(true);
            ani.SetTrigger("SwordCombo(Left)");
            hand = Hand.LeftHand;
            return hand;
        }
        else
        {
            swordBack.SetActive(false);
            swordRighthand.SetActive(false);
            swordLefthand.SetActive(true);
            ani.SetTrigger("SwordCombo(Left)");
            hand = Hand.RightHand;
            return hand;
        }
    }



}
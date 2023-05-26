using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    [Header("�ʿ��� �͵� �־��ּ���~~~")]
    [SerializeField] GameObject lightAtk; //�Ϲ�
    [SerializeField] GameObject heavyAtk; // ��¡
    [SerializeField] GameObject Player; //�÷��̾�
    [SerializeField] public GameObject swordBack; //����� Į
    [SerializeField] public GameObject swordRighthand; //�������� Į
    [SerializeField] public GameObject swordLefthand; //�޼��� Į
    [SerializeField] private PlayerInput playerinput;

    public enum Hand
    {
        RightHand,
        LeftHand
    }

    public Hand hand { get; private set; }
    private int atkCnt;//1,2,3Ÿ�� ���� ����
    private bool isAtk = false;
    private bool isClick = false;

    Animator ani;
    public Sword_Data data; // �ҵ� ������

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
        if (atkCnt > 3)// ���� 3Ÿ �̻�, �ִϸ��̼� ���� ��
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
            Debug.Log("���� ��Ÿ��");
            if (!isAtk)// ������ X
            {
                isAtk = true;
                atkCnt++;
                hand = SetHand(hand);
            }

            else if (isAtk && ani.GetCurrentAnimatorStateInfo(0).normalizedTime <= 1.0f && atkCnt < 3)//���� ��, �ִϸ��̼� ������ ��, 3Ÿ ������
            {
                atkCnt++;
                isClick = true;
                Debug.Log(atkCnt);
                Debug.Log("������ ����Ÿ���̿���");
                hand = SetHand(hand);
                isClick = false;
                lightAtk.SetActive(true);
                Invoke(nameof(ResetLight),0.2f);
            }


        }
    }

    private void ResetLight()
    {
        lightAtk.SetActive(false);
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
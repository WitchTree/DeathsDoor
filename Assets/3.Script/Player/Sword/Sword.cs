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
    [SerializeField] public GameObject LightSlash; //��Ÿ ������ ������Ʈ
    [SerializeField] public GameObject StrongSlash; //��¡ ������ ������Ʈ
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
    private int atkCnt;//1,2,3Ÿ�� ���� ����
    private bool isAtk = false;
    private bool isCombo = false;
    private bool isLeft = false;

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
        Normalize();
    }
    public void Atk()
    {
        if (atkCnt >= 3)// ���� 3Ÿ �̻�, �ִϸ��̼� ���� ��
        {
            Debug.Log("���� �ȵ�!!");
            atkCnt = 0;
            StartCoroutine(Waiting());
            isAtk = false;
            Debug.Log("���� ��!!");
            return;
        }
        else if (playerinput.isLight)
        {
            Debug.Log("���� ��Ÿ��");
            if (atkCnt < 3)//���� ��, �ִϸ��̼� ������ ��, 3Ÿ ������
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
            Debug.Log("�Ѱ���!");
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
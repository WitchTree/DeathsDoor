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

    public Hand hand { get; private set; }
    private int atkCnt;//1,2,3Ÿ�� ���� ����
    public bool isAtk = false;

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
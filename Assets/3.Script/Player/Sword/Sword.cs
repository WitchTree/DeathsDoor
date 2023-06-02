using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    [Header("필요한 것들 넣어주세요~~~")]
    [SerializeField] GameObject Player; 
    [SerializeField] public GameObject swordBack;
    [SerializeField] public GameObject swordRighthand;
    [SerializeField] public GameObject swordLefthand;


    [Header("Slash")]
    [SerializeField] public GameObject LightSlash_L;
    [SerializeField] public GameObject LightSlash_R;
    [SerializeField] public GameObject StrongSlash_L; 
    [SerializeField] public GameObject StrongSlash_R; 
    [SerializeField] public GameObject RollSlash; 

    [SerializeField] private PlayerInput playerinput;
    public enum Hand
    {
        RightHand,
        LeftHand
    }

    public Hand hand { get; set; }
    private int atkCnt;//1,2,3타를 위한 변수
    public bool isAtk = false;

    Animator ani;
    public Sword_Data data; // 소드 데이터

    private void Awake()
    {
        hand = Hand.LeftHand;
        ani = GetComponent<Animator>();
    }
    public void SetHand()
    {
        if (hand.Equals(Hand.LeftHand))
        {
            hand = Hand.RightHand;
        }
        else
        {
            hand = Hand.LeftHand;
        }
    }
    public void Normalize()
    {
        swordBack.SetActive(true);
        swordRighthand.SetActive(false);
        swordLefthand.SetActive(false);
        LightSlash_L.SetActive(false);
        LightSlash_R.SetActive(false);
        StrongSlash_L.SetActive(false);
        StrongSlash_R.SetActive(false);
        RollSlash.SetActive(false);
        ani.SetInteger("Combo", 0);
     }
}
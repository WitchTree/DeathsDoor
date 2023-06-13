using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AbilityUpgradeUIManagement : MonoBehaviour
{
    [Header("SFX")]
    [SerializeField] public AudioSource UpgradeAudio;
    [SerializeField] public AudioClip UpgradeNavigation;
    [Space]

    public GameObject[] Buttons;
    private GameObject firstButton;
    [SerializeField] int selectedButton = 0;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    bool buttonPressed = false;
    public bool isMenuAct = false;
    public float timeScale;

    [Header("Text")]
    public Text Txt_InfoSub;
    public Text Txt_Info;
    public Text Txt_CostInfo;


    //GameObject UpgradeUI;
    public GameObject Hud;
    public GameObject cursor;


    private void Start()
    {
        //UpgradeUI = transform.GetChild(1).gameObject; 
        //Hud = GameObject.FindWithTag("HudUI");
        //cursor = GameObject.Find("Arrow");
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKeyDown(KeyCode.R) && isMenuAct)
        {
            isMenuAct = false;
            Hud.SetActive(true);
            cursor.SetActive(true);
        }
        if (!isMenuAct)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
            isMenuAct = true;

            //UpgradeUI.SetActive(true);
            Hud.SetActive(false);
            cursor.SetActive(false);
            SetMenuUI();
            UIKeyboardInput();
        }
    }
    public void SetMenuUI()
    {
        Buttons = GameObject.FindGameObjectsWithTag("Button");

        if (Buttons.Length > 0)
        {
            if (firstButton != Buttons[0])
            {
                selectedButton = 0;
            }
            firstButton = Buttons[0];
        }

        btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        horizontalDifference = new float[Buttons.Length];
        verticallDifference = new float[Buttons.Length];

        for (int i = 0; i < Buttons.Length; i++)
        {
            if (i != selectedButton)
            {
                Vector3 btn_pos2 = Buttons[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
        UpgradeInfo();
    }

    public void UIKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
                UpgradeInfo();
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
                UpgradeInfo();
            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
            buttonPressed = true;

            if (selectedButton == Buttons.Length - 1)
            {
                selectedButton -= Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
                UpgradeInfo();
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
                UpgradeInfo();
            }
        }
        /*
        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("E키 선택!");
            if (Buttons[0])
            {
                //어빌1 업그레이드
            }
            if (Buttons[1])
            {
                //어빌2 업그레이드
            }
            if (Buttons[2])
            {
                //어빌3 업그레이드
            }
            if (Buttons[3])
            {
                //어빌4 업그레이드
            }
        }
        */
        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }


    public void UpgradeInfo()
    {
        if (selectedButton == 0)
        {
            Txt_InfoSub.text = "힘";
            Txt_Info.text = "사신이 근접 무기를 들고다니는 능력이 상승한다. 이 능력을 상승시키면 공격력이 상승하며, 사거리도 늘어난다.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 1)
        {
            Txt_InfoSub.text = "민첩";
            Txt_Info.text = "사신의 공격 속도와 정확도가 상승한다. 이 능력을 상승시키면 사신이 자신의 근접무기와 원거리 무기를 보다 빠르게 충전시키며, 근접 공격의 연타 속도가 상승한다.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 2)
        {
            Txt_InfoSub.text = "속도";
            Txt_Info.text = "사신의 속도와 이동력이 상승한다. 이 능력을 상승시키면 사신의 기본 이동 속도가 상승하며, 더 빠르게 구르고 회피의 재사용 간격이 줄어든다.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 3)
        {
            Txt_InfoSub.text = "마법";
            Txt_Info.text = "사신의 마법 무기 기량이 상승한다. 이 능력을 상승시키면 마법 주문과 원거리 능력의 피해량이 상승한다.";
            Txt_CostInfo.text = "X 400";
        }
    }
}
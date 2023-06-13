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
            Debug.Log("EŰ ����!");
            if (Buttons[0])
            {
                //���1 ���׷��̵�
            }
            if (Buttons[1])
            {
                //���2 ���׷��̵�
            }
            if (Buttons[2])
            {
                //���3 ���׷��̵�
            }
            if (Buttons[3])
            {
                //���4 ���׷��̵�
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
            Txt_InfoSub.text = "��";
            Txt_Info.text = "����� ���� ���⸦ ���ٴϴ� �ɷ��� ����Ѵ�. �� �ɷ��� ��½�Ű�� ���ݷ��� ����ϸ�, ��Ÿ��� �þ��.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 1)
        {
            Txt_InfoSub.text = "��ø";
            Txt_Info.text = "����� ���� �ӵ��� ��Ȯ���� ����Ѵ�. �� �ɷ��� ��½�Ű�� ����� �ڽ��� ��������� ���Ÿ� ���⸦ ���� ������ ������Ű��, ���� ������ ��Ÿ �ӵ��� ����Ѵ�.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 2)
        {
            Txt_InfoSub.text = "�ӵ�";
            Txt_Info.text = "����� �ӵ��� �̵����� ����Ѵ�. �� �ɷ��� ��½�Ű�� ����� �⺻ �̵� �ӵ��� ����ϸ�, �� ������ ������ ȸ���� ���� ������ �پ���.";
            Txt_CostInfo.text = "X 400";
        }
        if (selectedButton == 3)
        {
            Txt_InfoSub.text = "����";
            Txt_Info.text = "����� ���� ���� �ⷮ�� ����Ѵ�. �� �ɷ��� ��½�Ű�� ���� �ֹ��� ���Ÿ� �ɷ��� ���ط��� ����Ѵ�.";
            Txt_CostInfo.text = "X 400";
        }
    }
}
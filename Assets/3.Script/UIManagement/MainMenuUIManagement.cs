using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;
    public GameObject[] MenuPanel;

    [SerializeField] int selectedButton = 0;
    [SerializeField] int panelSelected = 0;
    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject Hud;
    GameObject firstButton;

    //MainUI�� ������ �� Ȱ��ȭ�� �޴�â
    GameObject Inventory;
    GameObject Weapon;
    GameObject Trinkets;

    private bool isMenuAct = false;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    public float timeScale;


    private void Awake()
    {
        MainUI = transform.GetChild(0).gameObject; //Ȱ��ȭ �� �ڽĿ�����Ʈ ã��
        Hud = GameObject.FindWithTag("HudUI");

        Inventory = GameObject.Find("Inventory");
        Weapon = GameObject.Find("Weapon");
        Trinkets = GameObject.Find("Trinkets");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            switch (isMenuAct)
            {
                case true:
                    isMenuAct = false;
                    MainUI.SetActive(false);
                    Hud.SetActive(true);
                    break;
                    
                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    SetMenuUI();
                    //���⿡ Main Panel Open
                    //UI �������� �� ��� �ȿ����̰��ϱ� timescale
                    break;
            }
        }

        if (isMenuAct)
        {
            UIKeyboardInput();
        }
    }


    private void SetMenuUI()
    {
        //'Button' �±װ� ���� ��� ��ư�� �迭 ����� 
        Buttons = GameObject.FindGameObjectsWithTag("Button");

        if (Buttons.Length > 0)
        {
            //panel�� Ȱ��ȭ �Ǿ��ִ� �� Ȯ���ϰ�, ����Ǿ��� ��� ù��° ��ư Ȱ��ȭ
            if (firstButton != Buttons[0])
            {
                selectedButton = 0;
            }
            firstButton = Buttons[0];
        }

        //Ȱ��ȭ �� ��ư�� ��ġ ��������
        btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        //��ư ��ġ ���̸� ��Ÿ���� �迭
        horizontalDifference = new float[Buttons.Length];
        verticallDifference = new float[Buttons.Length];

        //��ư ��ġ ���̸� ���
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
    }

    private void UIKeyboardInput()
    {

        //if a closer diffenece in positions for buttons is true, this will be overwriten
        //��ư�� ���� ��ġ ���̰� �� ����� ���, 9999 ��ġ�� overwriten
        new_horizontal = 9999;
        new_vertical = 9999;

        if (Input.GetKeyDown(KeyCode.Z) && !buttonPressed)
        {
            Debug.Log("ZŰ ����");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
            }

        }

        if (Input.GetKeyDown(KeyCode.X) && !buttonPressed)
        {
            Debug.Log("XŰ ����");
            buttonPressed = true;


            if (selectedButton == Buttons.Length - 1)
            {
                selectedButton -= Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
            }

        }


        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("EŰ ����!");
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    public void MainMenuOpen()
    {
        MenuPanel = GameObject.FindGameObjectsWithTag("MainUIPanel");

        if (MenuPanel.Length > 0)
        {
  

            if (Buttons[selectedButton] == Buttons[0])
            {
                if (MenuPanel[0])
                {
                    Debug.Log("Inventory ���� ������ ��");
                    //Inventory Ȱ��ȭ
                    //WASDŰ���� �Է°����� ����
                    //�Է°��� ���� Inof_Txt ����
                }
                else
                {
                }

            }

            else if (Buttons[selectedButton] == Buttons[1])
            {
                if (MenuPanel[1])
                {
                Debug.Log("Weapon ���� ������ ��");
                //Weapon Ȱ��ȭ
                //WASDŰ���� �Է°����� ����
                //�Է°��� ���� Inof_Txt ����
                //EŰ�� ���� ����
                }
                else
                {
                }
            }

            else if (Buttons[selectedButton] == Buttons[2])
            {
                if (MenuPanel[2])
                {
                    Debug.Log("Trinkets ���� ������ ��");
                    //Trinkets Ȱ��ȭ
                    //WASDŰ���� �Է°����� ����
                    //�Է°��� ���� Inof_Txt ����
                    //EŰ�� ���õ� Trinkets Ȯ��
                }
                else
                {
                }
            }
            else if (Buttons[selectedButton] == Buttons[3])
            {
                Debug.Log("Controls ���� ������ ��");
                
                //�� �ð������� contorl â�� ���Ļ� ��������

            }
            else if (Buttons[selectedButton] == Buttons[4])
            {
                Debug.Log("Option ���� ������ ��");
                //�̰͵�
            }

        }
    }


}
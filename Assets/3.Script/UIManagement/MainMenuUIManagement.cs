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

    GameObject Arrow;

    private bool isMenuAct = false;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    public float timeScale;


    //���߿� �Ʒ��� �ν��Ͻ� ���� ������ panel Ű���� �Է°� ������~ 0530
    #region instance ����
    private static MainMenuUIManagement Instance;

    public static MainMenuUIManagement instance
    {
        get
        {
            if (Instance == null)
            {
                Instance = FindObjectOfType<MainMenuUIManagement>();
            }
            return Instance;
        }
    }
    #endregion

    private void Awake()
    {

        MainUI = transform.GetChild(0).gameObject; //Ȱ��ȭ �� �ڽĿ�����Ʈ ã��
        Hud = GameObject.FindWithTag("HudUI");
        Arrow = GameObject.Find("Arrow");

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
                    Time.timeScale = 1f;
                    isMenuAct = false;
                    MainUI.SetActive(false);
                    Hud.SetActive(true);
                    Arrow.SetActive(true);
                    break;

                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    Arrow.SetActive(false);
                    SetMenuUI();
                   
                    //���⿡ Main Panel Open
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
        //Buttons = GameObject.FindGameObjectsWithTag("Button");

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

            if (selectedButton == 0)
            {
                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 1)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 2)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
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
                Debug.Log(Buttons[selectedButton].name);
                Debug.Log(selectedButton);
            }

            if(selectedButton==0)
            {
                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
            }

            if(selectedButton==1)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 2)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
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

    //public void MainMenuOpen()
    //{

    //    if (MenuPanel.Length > 0)
    //    {

    //        if (Buttons[selectedButton] == Buttons[0])
    //        {
    //            Debug.Log("Inventory ���� ������ ��");
    //            MenuPanel[0].SetActive(true);
    //                //Inventory.SetActive(true);
    //                //Inventory Ȱ��ȭ
    //                //WASDŰ���� �Է°����� ����
    //                //�Է°��� ���� Inof_Txt ����
    //        }

    //        if (Buttons[selectedButton] == Buttons[1])
    //        {
    //            MenuPanel[1].SetActive(true);
    //                Debug.Log("Weapon ���� ������ ��");
    //                //Weapon Ȱ��ȭ
    //                //WASDŰ���� �Է°����� ����
    //                //�Է°��� ���� Inof_Txt ����
    //                //EŰ�� ���� ����
           
    //        }

    //        if (Buttons[selectedButton] == Buttons[2])
    //        {
                
    //            MenuPanel[2].SetActive(true);
    //                Debug.Log("Trinkets ���� ������ ��");
    //                //Trinkets Ȱ��ȭ
    //                //WASDŰ���� �Է°����� ����
    //                //�Է°��� ���� Inof_Txt ����
    //                //EŰ�� ���õ� Trinkets Ȯ��
             
    //        }
    //        if (Buttons[selectedButton] == Buttons[3])
    //        {
    //            Debug.Log("Controls ���� ������ ��");

    //            //�� �ð������� contorl â�� ���Ļ� ��������

    //        }
    //        if (Buttons[selectedButton] == Buttons[4])
    //        {
    //            Debug.Log("Option ���� ������ ��");
    //            //�̰͵�
    //        }

    //    }
    //}
}
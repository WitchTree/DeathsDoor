using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;
    public GameObject[] MenuPanel; //�޴� �г�

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject Hud;
    GameObject firstButton;

    GameObject Arrow;

    private bool isMenuAct = false;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    private float timeScale;


    //���߿� �Ʒ��� �ν��Ͻ� ���� ������ panel Ű���� �Է°� �޴°ɷ� ��ġ��~ 0530
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
                    EventSystem.current.SetSelectedGameObject(Buttons[0]);
                    //���⿡ Main Panel Open
                    break;
            }
        }

        if (isMenuAct)
        {
            MainUIHeaderKeyboardInput();
        }
    }


    private void SetMenuUI()
    {
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
        //EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
    }

    private void MainUIHeaderKeyboardInput()
    {
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

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }


}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;

    [SerializeField] int selectedButton = 0;

    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject Hud;
    GameObject firstButton;

    private bool isMenuAct = false;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    private void Start()
    {
        MainUI = transform.GetChild(0).gameObject; //Ȱ��ȭ �� �ڽĿ�����Ʈ ã��
        Hud = GameObject.FindWithTag("HudUI");
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
                    //UI �������� �� ��� �ȿ����̰��ϱ�
                    break;
                    
                case false:
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    SetMenuUI();
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
        if (Buttons[0])
        {
            Debug.Log("Inventory ���� ������ ��");
        }
        else if (Buttons[1])
        {
            Debug.Log("Weapon ���� ������ ��");
        }
        else if (Buttons[2])
        {
            Debug.Log("Trinkets ���� ������ ��");
        }
        else if (Buttons[3])
        {
            Debug.Log("Controls ���� ������ ��");
        }
        else if (Buttons[4])
        {
            Debug.Log("Option ���� ������ ��");
        }

    }


}
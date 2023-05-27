using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AbilityUpgradeUIManagement : MonoBehaviour
{
    //���θ޴� Ȱ��ȭ�ϰ� �޴� �������� 
    public GameObject[] Buttons;

    [SerializeField] int selectedButton = 0;

    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject UpgradeUI;
    GameObject firstButton;

    private bool isMenuAct = false;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    private void Start()
    {
        UpgradeUI = transform.GetChild(1).gameObject; //Ȱ��ȭ �� �ڽĿ�����Ʈ ã��
        //UpgradeUI = transform.Find("UpgradeUI").gameObject; //Ȱ��ȭ �� ������Ʈ ã��
        //���콺 Ŀ�� ��Ȱ��ȭ ��������
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R)) 
        {
            switch (isMenuAct)
            {
                case true:
                    isMenuAct = false;
                    UpgradeUI.SetActive(false);
                    break;

                case false:
                    isMenuAct = true;
                    UpgradeUI.SetActive(true);
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
        /*
        if (Input.GetKeyDown(KeyCode.W) && Input.GetKeyDown(KeyCode.A) && Input.GetKeyDown(KeyCode.Z) && Input.GetKeyDown(KeyCode.X))
        {
            return;
        }
        */


        //if a closer diffenece in positions for buttons is true, this will be overwriten
        //��ư�� ���� ��ġ ���̰� �� ����� ���, 9999 ��ġ�� overwriten
        new_horizontal = 9999;
        new_vertical = 9999;

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            Debug.Log("W");
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

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            Debug.Log("S");
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

    /*
     0��° �迭�� �ִ� ��ư Ȱ��ȭ �κ��丮
     1��° �迭�� �ִ� ��ư Ȱ��ȭ ����
     2��° �迭�� �ִ� ��ư Ȱ��ȭ ������ ����
     3��° �迭�� �ִ� ��ư Ȱ��ȭ ��Ʈ�ѷ�
     4��° �迭�� �ִ� ��ư Ȱ��ȭ �ɼ�
     */



}
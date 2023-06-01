using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class test : MonoBehaviour //���θ޴� panel �Է°� �׽�Ʈ
{
    public GameObject[] Buttons;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    GameObject firstButton;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;


    private void Start()
    {
        //Cursor.visible = false; -> ���콺 Ŀ�� �Ⱥ��̱�(��Ȱ��ȭx �� �Ⱥ��̱⸸�һ�...)
    }

    // Update is called once per frame
    void Update()
    {
        SetMenuUI();
        UIKeyboardInput();
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

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("AŰ ����");
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

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("DŰ ����");
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


        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

}
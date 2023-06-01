using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class test : MonoBehaviour //inventory panel
{
    public GameObject[] InventoryBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    GameObject firstButton;

    //�������� �ϴ� ���� �÷���
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;


    // Update is called once per frame


    private void OnEnable()
    {
        SetMenuUI();
    }
    void Update()
    {
        InventoryKeyboardInput();
    }


    private void SetMenuUI()
    {
        if (InventoryBtn.Length > 0)
        {
            //panel�� Ȱ��ȭ �Ǿ��ִ� �� Ȯ���ϰ�, ����Ǿ��� ��� ù��° ��ư Ȱ��ȭ
            if (firstButton != InventoryBtn[0])
            {
                selectedButton = 0;
            }
            firstButton = InventoryBtn[0];
        }

        //Ȱ��ȭ �� ��ư�� ��ġ ��������
        btn_pos = InventoryBtn[selectedButton].GetComponent<RectTransform>().position;

        //��ư ��ġ ���̸� ��Ÿ���� �迭
        horizontalDifference = new float[InventoryBtn.Length];
        verticallDifference = new float[InventoryBtn.Length];

        //��ư ��ġ ���̸� ���
        for (int i = 0; i < InventoryBtn.Length; i++)
        {
            if (i != selectedButton)
            {
                Vector3 btn_pos2 = InventoryBtn[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
       // Debug.Log(InventoryBtn[selectedButton].name);
    }


    private void InventoryKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            Debug.Log("WŰ ���� ��");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 3:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 4:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;

            }
            /*
            if (selectedButton == 0)
            {
                selectedButton = InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            */


        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("AŰ ���� ��");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }


        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            Debug.Log("SŰ ���� ��");
            buttonPressed = true;

            if (selectedButton == InventoryBtn.Length - 1)
            {
                selectedButton -= InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }

        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("DŰ ���� ��");
            buttonPressed = true;

            if (selectedButton == InventoryBtn.Length - 1)
            {
                selectedButton -= InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
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


}

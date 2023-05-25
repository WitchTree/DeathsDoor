using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TitleUIManagement : MonoBehaviour
{

    public GameObject[] Buttons;

    int selectedButton =0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject firstButton;

    private void Start()
    {
        //Cursor.visible = false; -> ���콺 Ŀ�� �Ⱥ��̱�(��Ȱ��ȭx �� �Ⱥ��̱⸸�һ�...)
    }

    // Update is called once per frame
    void Update()
    {
        TietleUIKeyboardSelected();
    }

    private void TietleUIKeyboardSelected()
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
        Vector3 btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        //��ư ��ġ ���̸� ��Ÿ���� �迭
        float[] horizontalDifference = new float[Buttons.Length];
        float[] verticallDifference = new float[Buttons.Length];

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

        //if a closer diffenece in positions for buttons is true, this will be overwriten
        //��ư�� ���� ��ġ ���̰� �� ����� ���, 9999 ��ġ�� overwriten
        float new_horizontal = 9999;
        float new_vertical = 9999;


        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            buttonPressed = true;

            for (int i = 0; i < Buttons.Length; i++)
            {
                //dont test for the selected buttons
                if (i != selectedButton)
                {
                    //check for correct direction
                    if (verticallDifference[i] > 0)
                    {
                        //find closest Button in both direction
                        if (Mathf.Abs(horizontalDifference[i]) < Mathf.Abs(new_horizontal))
                        {
                            new_horizontal = horizontalDifference[i];
                            if (Mathf.Abs(verticallDifference[i]) < new_vertical)
                            {
                                new_vertical = verticallDifference[i];
                                selectedButton = i;
                            }
                        }
                        else
                        {
                            selectedButton = i;
                        }
                    }
                }
            }
        }
        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            buttonPressed = true;

            for (int i = 0; i < Buttons.Length; i++)
            {
                if (i != selectedButton)
                {
                    if (verticallDifference[i] < 0)
                    {
                        if (Mathf.Abs(horizontalDifference[i]) <= Mathf.Abs(new_horizontal))
                        {
                            new_horizontal = horizontalDifference[i];
                            if (Mathf.Abs(verticallDifference[i]) <= new_vertical)
                            {
                                new_vertical = verticallDifference[i];
                                selectedButton = i;
                            }
                            else
                            {
                                selectedButton = i;
                            }
                        }
                    }
                }
            }

        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {

            buttonPressed = true;

            for (int i = 0; i < Buttons.Length; i++)
            {
                if (i != selectedButton)
                {
                    if (horizontalDifference[i] > 0)
                    {
                        if (Mathf.Abs(verticallDifference[i]) < Mathf.Abs(new_vertical))
                        {
                            new_vertical = verticallDifference[i];
                            if (Mathf.Abs(horizontalDifference[i]) < new_horizontal)
                            {
                                new_horizontal = horizontalDifference[i];
                                selectedButton = i;
                            }
                            else
                            {
                                selectedButton = i;
                            }
                        }
                    }
                }
            }
        }
        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {

            buttonPressed = true;

            for (int i = 0; i < Buttons.Length; i++)
            {
                if (i != selectedButton)
                {
                    if (horizontalDifference[i] < 0)
                    {
                        if (Mathf.Abs(verticallDifference[i]) < Mathf.Abs(new_vertical))
                        {
                            new_vertical = verticallDifference[i];
                            if (Mathf.Abs(horizontalDifference[i]) < new_horizontal)
                            {
                                new_horizontal = horizontalDifference[i];
                                selectedButton = i;
                            }
                            else
                            {
                                selectedButton = i;
                            }
                        }
                    }
                }
            }
        }


        if (horizontal == 0 && vertical == 0)
        {
            buttonPressed = false;
        }
        else
        {
            selectedButton = 0;
        }
    }

}

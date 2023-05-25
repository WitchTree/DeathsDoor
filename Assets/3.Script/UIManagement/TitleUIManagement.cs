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
        //Cursor.visible = false; -> 마우스 커서 안보이기(비활성화x 걍 안보이기만할뿐...)
    }

    // Update is called once per frame
    void Update()
    {
        TietleUIKeyboardSelected();
    }

    private void TietleUIKeyboardSelected()
    {

        //'Button' 태그가 붙은 모든 버튼의 배열 만들기 
        Buttons = GameObject.FindGameObjectsWithTag("Button");

        if (Buttons.Length > 0)
        {
            //panel이 활성화 되어있는 지 확인하고, 변경되었을 경우 첫번째 버튼 활성화
            if (firstButton != Buttons[0])
            {
                selectedButton = 0;
            }
            firstButton = Buttons[0];
        }

        //활성화 된 버튼의 위치 가져오기
        Vector3 btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        float[] horizontalDifference = new float[Buttons.Length];
        float[] verticallDifference = new float[Buttons.Length];

        //버튼 위치 차이를 계산
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
        //버튼에 대한 위치 차이가 더 가까울 경우, 9999 수치를 overwriten
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

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;

    int selectedButton = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject firstButton;

    private bool isStateMenuAct = false;


    private void Start()
    {
        MainUI = transform.Find("MainUI").gameObject; //활성화 될 오브젝트 찾기
       
        //마우스 커서 비활성화 넣을거임
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && !isStateMenuAct)
        {
            isStateMenuAct = true;
            MainUI.SetActive(true);

            MainMenuKeyboardSelected();
        }

        else if (Input.GetKeyDown(KeyCode.Escape) && isStateMenuAct)
        {
            isStateMenuAct = false;
            MainUI.SetActive(false);
        }
    }

    private void MainMenuKeyboardSelected()
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

        Vector3 btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;


        float[] horizontalDifference = new float[Buttons.Length];
        float[] verticallDifference = new float[Buttons.Length];


        for (int i = 0; i < Buttons.Length; i++)
        {
            if (i != selectedButton)
            {
                Vector3 btn_pos2 = Buttons[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }

        float new_horizontal = 9999;
        float new_vertical = 9999;

        if (Input.GetKeyDown(KeyCode.Z) && !buttonPressed)
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
        if (Input.GetKeyDown(KeyCode.X) && !buttonPressed)
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
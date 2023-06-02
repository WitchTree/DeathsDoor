using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TitleUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;
    private GameObject firstButton;

    [SerializeField] int selectedButton = 0;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    bool buttonPressed = false;

    [SerializeField] FadeImage fadeImage;

    private void Start()
    {
        SetMenuUI();
    }

    // Update is called once per frame
    void Update()
    {
        TietleUIKeyboardInput();
    }


    private void SetMenuUI() 
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

        btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        horizontalDifference = new float[Buttons.Length];
        verticallDifference = new float[Buttons.Length];

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

    
    private void TietleUIKeyboardInput()
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

        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("E키 선택!");

            if (Buttons[0])
            {
                //start버튼 선택했을 때 sceneChange=> 01.HOD 장면으로 넘어가주세용~  from.0602
                fadeImage.FadeOut();
            }

            if (Buttons[1])
            {
                //option 버튼... 시간 남을때 하렴...ㅎㅎ-민아가 민아에게-
            }

            if (Buttons[2])
            {
                //quit 버튼 게임 종료
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }
}

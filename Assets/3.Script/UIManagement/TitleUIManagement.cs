using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TitleUIManagement : MonoBehaviour
{

    public Animator[] BtnAni;
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

        if (Input.GetKeyDown(KeyCode.E) && !buttonPressed)
        {
            buttonPressed = true;

            if (selectedButton==0)
            {
                BtnAni[0].SetTrigger("ButtonPressed");
                fadeImage.FadeOut();
                Debug.Log("Start");
            }

            else if (selectedButton == 1)
            {
                BtnAni[1].SetTrigger("ButtonPressed");
                //option ��ư... �ð� ������ �Ϸ�...����-�ξư� �ξƿ���-
                Debug.Log("Option");
            }

            else if (selectedButton == 2)
            {
                BtnAni[2].SetTrigger("ButtonPressed");
                Application.Quit();
                Debug.Log("Quit");
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

}

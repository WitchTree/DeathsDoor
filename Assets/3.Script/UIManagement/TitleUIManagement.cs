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

    [SerializeField] private AudioSource menuAudio;
    [SerializeField] private AudioClip menuNavigation;
    [SerializeField] private AudioClip buttonSelectedSFX;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    bool buttonPressed = false;

    [SerializeField] FadeImage fadeImage;

    private void Start()
    {
        EventSystem.current.SetSelectedGameObject(Buttons[0]);
        Cursor.visible = false;
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
            menuAudio.PlayOneShot(menuNavigation);
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
            menuAudio.PlayOneShot(menuNavigation);
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
                menuAudio.PlayOneShot(buttonSelectedSFX);
                fadeImage.FadeOut();
            }

            else if (selectedButton == 1)
            {
                BtnAni[1].SetTrigger("ButtonPressed");
                menuAudio.PlayOneShot(buttonSelectedSFX);
            }

            else if (selectedButton == 2)
            {
                BtnAni[2].SetTrigger("ButtonPressed");
                menuAudio.PlayOneShot(buttonSelectedSFX);
                GameExit();
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }


    void GameExit()
    {
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
    Application.Quit();
#endif
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AbilityUpgradeUIManagement : MonoBehaviour
{

    [Header("SFX")]
    [SerializeField] private AudioSource UpgradeAudio;
    [SerializeField] private AudioClip UpgradeNavigation;
    [Space]

    public GameObject[] Buttons;
    private GameObject firstButton;
    [SerializeField] int selectedButton = 0;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    bool buttonPressed = false;
    private bool isMenuAct = false;
    private float timeScale;

    GameObject UpgradeUI;
    GameObject Hud;
    GameObject Arrow;


    private void Start()
    {
        UpgradeUI = transform.GetChild(1).gameObject; 
        Hud = GameObject.FindWithTag("HudUI");
        Arrow = GameObject.Find("Arrow");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R)) 
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
            switch (isMenuAct)
            {
                case true:
                    Time.timeScale = 1f;
                    isMenuAct = false;
                    UpgradeUI.SetActive(false);
                    Hud.SetActive(true);
                    Arrow.SetActive(true);
                    break;

                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    UpgradeUI.SetActive(true);
                    Hud.SetActive(false);
                    Arrow.SetActive(false);
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

    private void UIKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
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
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
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
            if (Buttons[0])
            {
                //���1 ���׷��̵�
            }
            if (Buttons[1])
            {
                //���2 ���׷��̵�
            }
            if (Buttons[2])
            {
                //���3 ���׷��̵�
            }
            if (Buttons[3])
            {
                //���4 ���׷��̵�
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

}
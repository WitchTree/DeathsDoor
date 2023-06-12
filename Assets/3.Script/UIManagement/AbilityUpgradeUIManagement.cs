using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AbilityUpgradeUIManagement : MonoBehaviour
{
    [Header("SFX")]
    [SerializeField] public AudioSource UpgradeAudio;
    [SerializeField] public AudioClip UpgradeNavigation;
    [Space]

    public GameObject[] Buttons;
    private GameObject firstButton;
    [SerializeField] int selectedButton = 0;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    bool buttonPressed = false;
    public bool isMenuAct = false;
    public float timeScale;

    //GameObject UpgradeUI;
    public GameObject  Hud;
    public GameObject cursor;


    private void Start()
    {
        //UpgradeUI = transform.GetChild(1).gameObject; 
        //Hud = GameObject.FindWithTag("HudUI");
        //cursor = GameObject.Find("Arrow");
    }

    // Update is called once per frame
    void Update()
    {
        //if (Input.GetKeyDown(KeyCode.R)) 
        //{
        //    UpgradeAudio.PlayOneShot(UpgradeNavigation);
        //    switch (isMenuAct)
        //    {
        //        case true:
        //            Time.timeScale = 1f;
        //            isMenuAct = false;
        //            //UpgradeUI.SetActive(false);
        //            Hud.SetActive(true);
        //            Cursor.SetActive(true);
        //            break;
        //
        //        case false:
        //            Time.timeScale = timeScale;
        //            isMenuAct = true;
        //            //UpgradeUI.SetActive(true);
        //            Hud.SetActive(false);
        //            Cursor.SetActive(false);
        //            SetMenuUI();
        //            break;
        //    }
        //}
        //
        //if (isMenuAct)
        //{
        //    UIKeyboardInput();
        //}

        if (Input.GetKeyDown(KeyCode.R) && isMenuAct)
        {
            //UpgradeAudio.PlayOneShot(UpgradeNavigation);

            isMenuAct = false;
            //UpgradeUI.SetActive(false);
            Hud.SetActive(true);
            cursor.SetActive(true);
        }
        if (!isMenuAct)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
            isMenuAct = true;

            //UpgradeUI.SetActive(true);
            Hud.SetActive(false);
            cursor.SetActive(false);
            SetMenuUI();
            UIKeyboardInput();
        }
    }
    public void SetMenuUI()
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

    public void UIKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            UpgradeAudio.PlayOneShot(UpgradeNavigation);
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
        /*
        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("E키 선택!");
            if (Buttons[0])
            {
                //어빌1 업그레이드
            }
            if (Buttons[1])
            {
                //어빌2 업그레이드
            }
            if (Buttons[2])
            {
                //어빌3 업그레이드
            }
            if (Buttons[3])
            {
                //어빌4 업그레이드
            }
        }
        */
        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

}
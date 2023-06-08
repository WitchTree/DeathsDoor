using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MainMenuUIManagement : MonoBehaviour
{

    public PlayerState playerState;

    [Header("SFX")]
    [SerializeField] private AudioSource menuAudio;
    [SerializeField] private AudioClip menuOpen;
    [SerializeField] private AudioClip menuClose;
    [SerializeField] private AudioClip menuNavigation;
    [Space]

    [Header("header 배열")]
    public Button[] Buttons; 

    [Header("선택된 header")]
    [SerializeField] int headerSelectedButton = 0;
    [Space]
    public GameObject[] Headerselected;

    [Header("panel 배열")]
    public GameObject[] MenuPanel; 
    [Space]

    private bool buttonPressed = false;
    private bool isMenuAct = false;
    private float timeScale;

    GameObject MainUI;
    public GameObject Hud;
    public GameObject Cursor;


    [SerializeField] Text seed_Conut;
    [SerializeField] Text soul_Conut;

    private void Awake()
    {
        MainUI = transform.GetChild(0).gameObject;
        //Hud = GameObject.FindWithTag("HudUI");
        //Arrow = GameObject.Find("Arrow");
    }

    private void OnEnable()
    {
        Headerselected[0].SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            switch (isMenuAct)
            {
                case true:
                    Time.timeScale = 1f;
                    isMenuAct = false;
                    MainUI.SetActive(false);
                    Hud.SetActive(true);
                    Cursor.SetActive(true);
                    menuAudio.PlayOneShot(menuClose);
                    break;

                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    Cursor.SetActive(false);
                    MainUIHeaderKeyboardInput();
                    menuAudio.PlayOneShot(menuOpen);
                    break;
            }
        }

        if (isMenuAct)
        {
            MainUIHeaderKeyboardInput();
        }

        SeedCnt();
        SoulCnt();
    }


    private void MainUIHeaderKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.Z) && !buttonPressed)
        {
            menuAudio.PlayOneShot(menuNavigation);
            buttonPressed = true;
            headerSelectedButton--;

            if (headerSelectedButton == 0)
            {
                Buttons[0].Select();

                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(true);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);

            }

            if (headerSelectedButton == 1)
            {
                Buttons[1].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(true);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);


            }

            if (headerSelectedButton == 2)
            {
                Buttons[2].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(true);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);

            }

            if (headerSelectedButton == 3)
            {
                Buttons[3].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(true);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(true);
                Headerselected[4].SetActive(false);
            }
            
            if (headerSelectedButton == 4)
            {
                Buttons[4].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(true);
            }
        }

        if (Input.GetKeyDown(KeyCode.X) && !buttonPressed)
        {
            menuAudio.PlayOneShot(menuNavigation);
            buttonPressed = true;
            headerSelectedButton++;

            if (headerSelectedButton == 0)
            {
                Buttons[0].Select();

                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(true);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);

            }

            if (headerSelectedButton == 1)
            {
                Buttons[1].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(true);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
            }

            if (headerSelectedButton == 2)
            {
                Buttons[2].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
                MenuPanel[3].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(true);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
            }

            if (headerSelectedButton == 3)
            {
                Buttons[3].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
                MenuPanel[3].SetActive(true);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(true);
                Headerselected[4].SetActive(false);
            }

            if (headerSelectedButton == 4)
            {
                Buttons[4].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(true);
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    private void SeedCnt()
    {
        seed_Conut.text = ("x " + playerState.seed);
    }

    private void SoulCnt()
    {
        soul_Conut.text = ("x " + playerState.getSpirit);
    }


}
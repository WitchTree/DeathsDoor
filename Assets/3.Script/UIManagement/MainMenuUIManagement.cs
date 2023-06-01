using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;
    public GameObject[] MenuPanel; //메뉴 패널

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject Hud;
    GameObject firstButton;

    GameObject Arrow;

    private bool isMenuAct = false;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    private float timeScale;


    //나중에 아래의 인스턴스 선언 가지고 panel 키보드 입력값 받는걸로 고치렴~ 0530
    #region instance 선언
    private static MainMenuUIManagement Instance;
    public static MainMenuUIManagement instance
    {
        get
        {
            if (Instance == null)
            {
                Instance = FindObjectOfType<MainMenuUIManagement>();
            }
            return Instance;
        }
    }
    #endregion

    private void Awake()
    {

        MainUI = transform.GetChild(0).gameObject; //활성화 될 자식오브젝트 찾기
        Hud = GameObject.FindWithTag("HudUI");
        Arrow = GameObject.Find("Arrow");

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
                    Arrow.SetActive(true);
                    break;

                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    Arrow.SetActive(false);
                    SetMenuUI();
                    EventSystem.current.SetSelectedGameObject(Buttons[0]);
                    //여기에 Main Panel Open
                    break;
            }
        }

        if (isMenuAct)
        {
            MainUIHeaderKeyboardInput();
        }
    }


    private void SetMenuUI()
    {
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
        btn_pos = Buttons[selectedButton].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        horizontalDifference = new float[Buttons.Length];
        verticallDifference = new float[Buttons.Length];

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
        //EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
    }

    private void MainUIHeaderKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.Z) && !buttonPressed)
        {
            Debug.Log("Z키 누름");
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

            if (selectedButton == 0)
            {
                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 1)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 2)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
            }

        }

        if (Input.GetKeyDown(KeyCode.X) && !buttonPressed)
        {
            Debug.Log("X키 누름");
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
                Debug.Log(Buttons[selectedButton].name);
            }

            if(selectedButton==0)
            {
                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);
            }

            if(selectedButton==1)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);
            }

            if (selectedButton == 2)
            {
                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }


}
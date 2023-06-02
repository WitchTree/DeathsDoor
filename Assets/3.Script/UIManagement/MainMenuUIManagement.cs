using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{

    [Header("header 배열")]
    public Button[] Buttons; //header 배열
    //private GameObject firstButton;

    [Header("선택된 header")]
    [SerializeField] int headerSelectedButton = 0;
    [Space]
    public GameObject[] Headerselected;

    [Header("panel 배열")]
    public GameObject[] MenuPanel; //pnanel 배열
    [Space]

    //[Header("panel 배열")]
    //[SerializeField] int panelSelectedButton = 0;

    //Vector3 btn_pos;
    //float[] horizontalDifference;
    //float[] verticallDifference;

    private bool buttonPressed = false;
    private bool isMenuAct = false;
    private float timeScale;

    GameObject MainUI;
    GameObject Hud;
    GameObject Arrow;


    private void Awake()
    {
        MainUI = transform.GetChild(0).gameObject;
        Hud = GameObject.FindWithTag("HudUI");
        Arrow = GameObject.Find("Arrow");
    }

    private void Start()
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
                    Arrow.SetActive(true);
                    break;

                case false:
                    Time.timeScale = timeScale;
                    isMenuAct = true;
                    MainUI.SetActive(true);
                    Hud.SetActive(false);
                    Arrow.SetActive(false);
                    MainUIHeaderKeyboardInput();
                    break;
            }
        }

        if (isMenuAct)
        {
            MainUIHeaderKeyboardInput();
        }
    }

    //첫번째 Select 되어있는 버튼
    /*
    private void SetMenuUI()
    {
        if (Buttons.Length > 0)
        {
            //panel이 활성화 되어있는 지 확인하고, 변경되었을 경우 첫번째 버튼 활성화
            if (firstButton != Buttons[0])
            {
                headerSelectedButton = 0;
            }
            firstButton = Buttons[0];
        }

        //활성화 된 버튼의 위치 가져오기
        btn_pos = Buttons[headerSelectedButton].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        horizontalDifference = new float[Buttons.Length];
        verticallDifference = new float[Buttons.Length];

        //버튼 위치 차이를 계산
        for (int i = 0; i < Buttons.Length; i++)
        {
            if (i != headerSelectedButton)
            {
                Vector3 btn_pos2 = Buttons[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        //EventSystem.current.SetSelectedGameObject(Buttons[headerSelectedButton]);
    }
    */



    private void MainUIHeaderKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.Z) && !buttonPressed)
        {
            Debug.Log("Z키 누름");
            buttonPressed = true;
            headerSelectedButton--;
            /*
            if (headerSelectedButton == 0)
            {
                headerSelectedButton = Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[headerSelectedButton]);
            }
            else
            {
                headerSelectedButton--;
                EventSystem.current.SetSelectedGameObject(Buttons[headerSelectedButton]);
            }
            */
            if (headerSelectedButton == 0)
            {
                Buttons[0].Select();

                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);

                Headerselected[0].SetActive(true);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("인벤토리 열기");

            }

            if (headerSelectedButton == 1)
            {
                Buttons[1].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(true);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("무기 열기");

            }

            if (headerSelectedButton == 2)
            {
                Buttons[2].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(true);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("빛나는물건 열기");
            }

            if (headerSelectedButton == 3)
            {
                Buttons[3].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(true);
                Headerselected[4].SetActive(false);
                Debug.Log("컨트롤러 열기");

            }
            
            if (headerSelectedButton == 4)
            {
                Buttons[4].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(true);
                Debug.Log("옵션 열기");
            }
        }

        if (Input.GetKeyDown(KeyCode.X) && !buttonPressed)
        {
            Debug.Log("X키 누름");
            buttonPressed = true;
            headerSelectedButton++;
            /*
            if (headerSelectedButton == Buttons.Length - 1)
            {
                headerSelectedButton -= Buttons.Length - 1;
                EventSystem.current.SetSelectedGameObject(Buttons[headerSelectedButton]);
            }
            else
            {
                headerSelectedButton++;
                EventSystem.current.SetSelectedGameObject(Buttons[headerSelectedButton]);
                Debug.Log(Buttons[headerSelectedButton].name);
            }
            */
            if (headerSelectedButton == 0)
            {
                Buttons[0].Select();

                MenuPanel[0].SetActive(true);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(false);

                Headerselected[0].SetActive(true);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("인벤토리 열기");

            }

            if (headerSelectedButton == 1)
            {
                Buttons[1].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(true);
                MenuPanel[2].SetActive(false);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(true);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("무기 열기");

            }

            if (headerSelectedButton == 2)
            {
                Buttons[2].Select();

                MenuPanel[0].SetActive(false);
                MenuPanel[1].SetActive(false);
                MenuPanel[2].SetActive(true);

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(true);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(false);
                Debug.Log("빛나는물건 열기");
            }

            if (headerSelectedButton == 3)
            {
                Buttons[3].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(true);
                Headerselected[4].SetActive(false);
                Debug.Log("컨트롤러 열기");

            }

            if (headerSelectedButton == 4)
            {
                Buttons[4].Select();

                Headerselected[0].SetActive(false);
                Headerselected[1].SetActive(false);
                Headerselected[2].SetActive(false);
                Headerselected[3].SetActive(false);
                Headerselected[4].SetActive(true);
                Debug.Log("옵션 열기");
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class MainMenuUIManagement : MonoBehaviour
{
    public GameObject[] Buttons;
    public GameObject[] MenuPanel;

    [SerializeField] int selectedButton = 0;
    [SerializeField] int panelSelected = 0;
    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject MainUI;
    GameObject Hud;
    GameObject firstButton;

    //MainUI가 켜졌을 때 활성화될 메뉴창
    GameObject Inventory;
    GameObject Weapon;
    GameObject Trinkets;

    GameObject Arrow;

    private bool isMenuAct = false;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    public float timeScale;


    //나중에 아래의 인스턴스 선언 가지고 panel 키보드 입력값 받으렴~ 0530
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

        Inventory = GameObject.Find("Inventory");
        Weapon = GameObject.Find("Weapon");
        Trinkets = GameObject.Find("Trinkets");
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
                   
                    //여기에 Main Panel Open
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
        //'Button' 태그가 붙은 모든 버튼의 배열 만들기 
        //Buttons = GameObject.FindGameObjectsWithTag("Button");

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
        EventSystem.current.SetSelectedGameObject(Buttons[selectedButton]);
    }

    private void UIKeyboardInput()
    {

        //if a closer diffenece in positions for buttons is true, this will be overwriten
        //버튼에 대한 위치 차이가 더 가까울 경우, 9999 수치를 overwriten
        new_horizontal = 9999;
        new_vertical = 9999;

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
                Debug.Log(selectedButton);
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

        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("E키 선택!");
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    //public void MainMenuOpen()
    //{

    //    if (MenuPanel.Length > 0)
    //    {

    //        if (Buttons[selectedButton] == Buttons[0])
    //        {
    //            Debug.Log("Inventory 열림 나머지 끔");
    //            MenuPanel[0].SetActive(true);
    //                //Inventory.SetActive(true);
    //                //Inventory 활성화
    //                //WASD키보드 입력값으로 셀렉
    //                //입력값에 따라 Inof_Txt 변경
    //        }

    //        if (Buttons[selectedButton] == Buttons[1])
    //        {
    //            MenuPanel[1].SetActive(true);
    //                Debug.Log("Weapon 열림 나머지 끔");
    //                //Weapon 활성화
    //                //WASD키보드 입력값으로 셀렉
    //                //입력값에 따라 Inof_Txt 변경
    //                //E키로 무기 변경
           
    //        }

    //        if (Buttons[selectedButton] == Buttons[2])
    //        {
                
    //            MenuPanel[2].SetActive(true);
    //                Debug.Log("Trinkets 열림 나머지 끔");
    //                //Trinkets 활성화
    //                //WASD키보드 입력값으로 셀렉
    //                //입력값에 따라 Inof_Txt 변경
    //                //E키로 선택된 Trinkets 확대
             
    //        }
    //        if (Buttons[selectedButton] == Buttons[3])
    //        {
    //            Debug.Log("Controls 열림 나머지 끔");

    //            //걍 시간있을때 contorl 창만 형식상 만들어두자

    //        }
    //        if (Buttons[selectedButton] == Buttons[4])
    //        {
    //            Debug.Log("Option 열림 나머지 끔");
    //            //이것두
    //        }

    //    }
    //}
}
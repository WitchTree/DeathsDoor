using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class test : MonoBehaviour //메인메뉴 inventory panel변경 테스트
{
    public GameObject[] Buttons;

    [SerializeField] int selectedButton = 0;

    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject firstButton;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    MainMenuUIManagement MenuButtons;

    private void Start()
    {
        MenuButtons = GetComponent<MainMenuUIManagement>();
        //Cursor.visible = false; -> 마우스 커서 안보이기(비활성화x 걍 안보이기만할뿐...)
    }

    // Update is called once per frame
    void Update()
    {
        SetMenuUI();
        UIKeyboardInput();
    }

    private void SetMenuUI()
    {
        //'Button' 태그가 붙은 모든 버튼의 배열 만들기 
        Buttons = GameObject.FindGameObjectsWithTag("Button");

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

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("A키 누름");
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

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("D키 누름");
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
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    public void MainMenuOpen()
    {
        if (Buttons[selectedButton] == Buttons[0])
        {
            Debug.Log("Inventory 열림 나머지 끔");
            //Inventory 활성화
            //WASD키보드 입력값으로 셀렉
            //입력값에 따라 Inof_Txt 변경

        }
        else if (Buttons[selectedButton] == Buttons[1])
        {
            Debug.Log("Weapon 열림 나머지 끔");
            //Weapon 활성화
            //WASD키보드 입력값으로 셀렉
            //입력값에 따라 Inof_Txt 변경
            //E키로 무기 변경
        }
        else if (Buttons[selectedButton] == Buttons[2])
        {
            Debug.Log("Trinkets 열림 나머지 끔");
            //Trinkets 활성화
            //WASD키보드 입력값으로 셀렉
            //입력값에 따라 Inof_Txt 변경
            //E키로 선택된 Trinkets 확대
        }
        else if (Buttons[selectedButton] == Buttons[3])
        {
            Debug.Log("Controls 열림 나머지 끔");

            //걍 시간있을때 contorl 창만 형식상 만들어두자

        }
        else if (Buttons[selectedButton] == Buttons[4])
        {
            Debug.Log("Option 열림 나머지 끔");
            //이것두
        }

    }
}
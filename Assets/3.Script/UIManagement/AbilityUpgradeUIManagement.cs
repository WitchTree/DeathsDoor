using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class AbilityUpgradeUIManagement : MonoBehaviour
{
    //메인메뉴 활성화하고 메뉴 열릴거임 
    public GameObject[] Buttons;

    [SerializeField] int selectedButton = 0;

    float new_horizontal = 0;
    float new_vertical = 0;

    float horizontal;
    float vertical;

    bool buttonPressed = false;

    GameObject UpgradeUI;
    GameObject firstButton;

    private bool isMenuAct = false;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;

    private void Start()
    {
        UpgradeUI = transform.GetChild(1).gameObject; //활성화 될 자식오브젝트 찾기
        //UpgradeUI = transform.Find("UpgradeUI").gameObject; //활성화 될 오브젝트 찾기
        //마우스 커서 비활성화 넣을거임
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R)) 
        {
            switch (isMenuAct)
            {
                case true:
                    isMenuAct = false;
                    UpgradeUI.SetActive(false);
                    break;

                case false:
                    isMenuAct = true;
                    UpgradeUI.SetActive(true);
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
        /*
        if (Input.GetKeyDown(KeyCode.W) && Input.GetKeyDown(KeyCode.A) && Input.GetKeyDown(KeyCode.Z) && Input.GetKeyDown(KeyCode.X))
        {
            return;
        }
        */


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

        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("E키 선택!");
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    /*
     0번째 배열에 있는 버튼 활성화 인벤토리
     1번째 배열에 있는 버튼 활성화 무기
     2번째 배열에 있는 버튼 활성화 빛나는 물건
     3번째 배열에 있는 버튼 활성화 컨트롤러
     4번째 배열에 있는 버튼 활성화 옵션
     */



}
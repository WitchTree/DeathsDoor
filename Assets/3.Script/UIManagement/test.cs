using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class test : MonoBehaviour //inventory panel
{
    public GameObject[] InventoryBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    GameObject firstButton;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;


    // Update is called once per frame


    private void OnEnable()
    {
        SetMenuUI();
    }
    void Update()
    {
        InventoryKeyboardInput();
    }


    private void SetMenuUI()
    {
        if (InventoryBtn.Length > 0)
        {
            //panel이 활성화 되어있는 지 확인하고, 변경되었을 경우 첫번째 버튼 활성화
            if (firstButton != InventoryBtn[0])
            {
                selectedButton = 0;
            }
            firstButton = InventoryBtn[0];
        }

        //활성화 된 버튼의 위치 가져오기
        btn_pos = InventoryBtn[selectedButton].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        horizontalDifference = new float[InventoryBtn.Length];
        verticallDifference = new float[InventoryBtn.Length];

        //버튼 위치 차이를 계산
        for (int i = 0; i < InventoryBtn.Length; i++)
        {
            if (i != selectedButton)
            {
                Vector3 btn_pos2 = InventoryBtn[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
       // Debug.Log(InventoryBtn[selectedButton].name);
    }


    private void InventoryKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            Debug.Log("W키 누름 ↑");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 3:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 4:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;

            }
            /*
            if (selectedButton == 0)
            {
                selectedButton = InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            */


        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("A키 누름 ←");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }


        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            Debug.Log("S키 누름 ↓");
            buttonPressed = true;

            if (selectedButton == InventoryBtn.Length - 1)
            {
                selectedButton -= InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }

        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("D키 누름 →");
            buttonPressed = true;

            if (selectedButton == InventoryBtn.Length - 1)
            {
                selectedButton -= InventoryBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                Debug.Log(InventoryBtn[selectedButton].name);
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


}

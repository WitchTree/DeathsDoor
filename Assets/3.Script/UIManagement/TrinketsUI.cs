using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TrinketsUI : MonoBehaviour //Trinkets panel
{
    public GameObject[] TrinketsBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;


    private void Start()
    {
        EventSystem.current.SetSelectedGameObject(TrinketsBtn[0]);
    }

    // Update is called once per frame
    void Update()
    {
        TrinketsKeyboardInput();
    }


    private void TrinketsKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            Debug.Log("W키 누름 ↑");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = TrinketsBtn.Length - 6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else if (selectedButton >= 6)
            {
                selectedButton-=6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }

            else 
            {
                if(selectedButton / 6 == 0)
                {
                    selectedButton += 18;
                    EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
                }
            }
            //if (TrinketsBtn[0] || TrinketsBtn[1] || TrinketsBtn[2] || TrinketsBtn[3] || TrinketsBtn[4] || TrinketsBtn[5])
        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("A키 누름 ←");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = TrinketsBtn.Length - 1;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else
            {
                selectedButton--;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            Debug.Log("S키 누름 ↓");
            buttonPressed = true;

            if (selectedButton == 0)
            {
                selectedButton = TrinketsBtn.Length - 6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else if (selectedButton >= 6)
            {
                selectedButton -= 6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }

            else
            {
                if (selectedButton / 6 == 0)
                {
                    selectedButton += 18;
                    EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
                }
            }
        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("D키 누름 →");
            buttonPressed = true;

            if (selectedButton == TrinketsBtn.Length - 1)
            {
                selectedButton -= TrinketsBtn.Length - 6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else
            {
                selectedButton++;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
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

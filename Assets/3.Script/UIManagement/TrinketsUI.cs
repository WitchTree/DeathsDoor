using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class TrinketsUI : MonoBehaviour //Trinkets panel
{
    [Header("SFX")]
    [SerializeField] private AudioSource trinketsAudio;
    [SerializeField] private AudioClip trinketsNavigation;
    [Space]
    public GameObject[] TrinketsBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    private void OnEnable()
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
            trinketsAudio.PlayOneShot(trinketsNavigation);
            Debug.Log("W키 누름 ↑");
            buttonPressed = true;

            if (selectedButton >= 6)
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

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            trinketsAudio.PlayOneShot(trinketsNavigation);
            Debug.Log("A키 누름 ←");
            buttonPressed = true;

            if ((selectedButton % 6).Equals(0))
            {
                selectedButton += 5;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else
            {
                selectedButton -= 1;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            trinketsAudio.PlayOneShot(trinketsNavigation);
            Debug.Log("S키 누름 ↓");
            buttonPressed = true;

            if (selectedButton <= 17)
            {
                selectedButton += 6;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }

            else
            {
                if (selectedButton / 6 == 3)
                {
                    selectedButton -= 18;
                    EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
                }
            }
        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            trinketsAudio.PlayOneShot(trinketsNavigation);
            Debug.Log("D키 누름 →");
            buttonPressed = true;

            if ((selectedButton % 6).Equals(5))
            {
                selectedButton -= 5;
                EventSystem.current.SetSelectedGameObject(TrinketsBtn[selectedButton]);
            }
            else
            {
                selectedButton += 1;
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

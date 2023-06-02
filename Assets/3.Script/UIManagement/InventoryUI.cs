using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InventoryUI : MonoBehaviour //inventory panel
{
    public GameObject[] InventoryBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    private void Start()
    {
        EventSystem.current.SetSelectedGameObject(InventoryBtn[0]);
    }

    // Update is called once per frame
    void Update()
    {
        InventoryKeyboardInput();
    }


    private void InventoryKeyboardInput()
    {

        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            Debug.Log("WŰ ���� ��");
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

        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            Debug.Log("AŰ ���� ��");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 1:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 2:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 4:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;

            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            Debug.Log("SŰ ���� ��");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 0:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 2:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
            }

        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            Debug.Log("DŰ ���� ��");
            buttonPressed = true;


            switch (selectedButton)
            {
                case 0:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 1:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
                case 3:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    break;
            }
        }


        if (Input.GetKeyDown(KeyCode.E))
        {
            Debug.Log("EŰ ����!");

        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }


}

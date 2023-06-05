using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class WeaponUI : MonoBehaviour //weapon panel
{

    [Header("SFX")]
    [SerializeField] private AudioSource weaponAudio;
    [SerializeField] private AudioClip weaponNavigation;
    [Space]
    public GameObject[] WeaponBtn;

    [SerializeField] int selectedButton = 0;

    bool buttonPressed = false;

    private void OnEnable()
    {
        EventSystem.current.SetSelectedGameObject(WeaponBtn[0]);
    }

    // Update is called once per frame
    void Update()
    {
        WeaponKeyboardInput();
    }


    private void WeaponKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.W) && !buttonPressed)
        {
            weaponAudio.PlayOneShot(weaponNavigation);
            Debug.Log("W키 누름 ↑");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 3:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 4:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
            }

        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            weaponAudio.PlayOneShot(weaponNavigation);
            Debug.Log("A키 누름 ←");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 1:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 2:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 4:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;

            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            weaponAudio.PlayOneShot(weaponNavigation);
            Debug.Log("S키 누름 ↓");
            buttonPressed = true;

            switch (selectedButton)
            {
                case 0:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 2:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
            }

        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            weaponAudio.PlayOneShot(weaponNavigation);
            Debug.Log("D키 누름 →");
            buttonPressed = true;


            switch (selectedButton)
            {
                case 0:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 1:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
                case 3:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(WeaponBtn[selectedButton]);
                    break;
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

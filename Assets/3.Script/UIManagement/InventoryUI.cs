using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class InventoryUI : MonoBehaviour //inventory panel
{
    [Header("SFX")]
    [SerializeField] private AudioSource inventoryAudio;
    [SerializeField] private AudioClip inventoryNavigation;
    [Space]

    public GameObject[] InventoryBtn;
    [SerializeField] int selectedButton = 0;

    public GameObject[] InventorySelected;

    [SerializeField] Text Txt_InfoSub;
    [SerializeField] Text Txt_Info;

    bool buttonPressed = false;

    private void OnEnable()
    {
        EventSystem.current.SetSelectedGameObject(InventoryBtn[0]);
        InventoryInfo();
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
            inventoryAudio.PlayOneShot(inventoryNavigation);
            buttonPressed = true;

            switch (selectedButton)
            {
                case 3:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 4:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;

            }

        }

        if (Input.GetKeyDown(KeyCode.A) && !buttonPressed)
        {
            inventoryAudio.PlayOneShot(inventoryNavigation);
            buttonPressed = true;

            switch (selectedButton)
            {
                case 1:
                    selectedButton = 0;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 2:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 4:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;

            }

        }

        if (Input.GetKeyDown(KeyCode.S) && !buttonPressed)
        {
            inventoryAudio.PlayOneShot(inventoryNavigation);
            buttonPressed = true;

            switch (selectedButton)
            {
                case 0:
                    selectedButton = 3;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 2:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
            }

        }

        if (Input.GetKeyDown(KeyCode.D) && !buttonPressed)
        {
            inventoryAudio.PlayOneShot(inventoryNavigation);
            buttonPressed = true;


            switch (selectedButton)
            {
                case 0:
                    selectedButton = 1;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 1:
                    selectedButton = 2;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
                case 3:
                    selectedButton = 4;
                    EventSystem.current.SetSelectedGameObject(InventoryBtn[selectedButton]);
                    InventoryInfo();
                    break;
            }
        }

        if (buttonPressed)
        {
            buttonPressed = false;
        }
    }

    public void InventoryInfo()
    {
        if (selectedButton == 0)
        {
            Txt_InfoSub.text="항아리 마녀의 거대 영혼";
            Txt_Info.text="모성애 하나만으로 살아왔지만 죽음을 피하려던 그 집착에 집어삼켜진 강력한 마녀. 마법, 부활, 물약과 항아리에 대한 열정으로 자신의 삶을 가득 채웠었다...";
        }
        if (selectedButton == 1)
        {
            Txt_InfoSub.text = "개구리 왕의 거대 영혼";
            Txt_Info.text = "용감하고 두려움 없던 지도자. 이 섬들이 죽음의 손에 닿기 전 수세기 전 부터 힘을 기르던 자.";
        }
        if (selectedButton == 2)
        {
            Txt_InfoSub.text = "베티의 영혼";
            Txt_Info.text = "혹자에겐 신으로, 혹자에겐 길들일 수 없는 야수로서 두려움의 대상이 된 자. 혼에서 태고의 정제되지 않는 기운이 뿜어져 나오며, 길잃은 혼의 기운을 흡수하지 않고도 자연스럽게 거대한 모습을 갖게 되었다. 아마 거인의 후손이 아니었을까 싶다.";
        }
        if (selectedButton == 3)
        {
            Txt_InfoSub.text = "생명의 수정 조각";
            Txt_Info.text = "4개의 조각을 모두 모아 영혼에 힘을 불어넣고, 생명력을 증가시킨다.";
        }
        if (selectedButton == 4)
        {
            Txt_InfoSub.text = "마법의 수정 조각";
            Txt_Info.text = "4개의 조각을 모두 모아 영혼에 힘을 불어넣고, 마력을 증가시킨다.";
        }
    }

}

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
            Txt_InfoSub.text="�׾Ƹ� ������ �Ŵ� ��ȥ";
            Txt_Info.text="�𼺾� �ϳ������� ��ƿ����� ������ ���Ϸ��� �� ������ ��������� ������ ����. ����, ��Ȱ, ����� �׾Ƹ��� ���� �������� �ڽ��� ���� ���� ä������...";
        }
        if (selectedButton == 1)
        {
            Txt_InfoSub.text = "������ ���� �Ŵ� ��ȥ";
            Txt_Info.text = "�밨�ϰ� �η��� ���� ������. �� ������ ������ �տ� ��� �� ������ �� ���� ���� �⸣�� ��.";
        }
        if (selectedButton == 2)
        {
            Txt_InfoSub.text = "��Ƽ�� ��ȥ";
            Txt_Info.text = "Ȥ�ڿ��� ������, Ȥ�ڿ��� ����� �� ���� �߼��μ� �η����� ����� �� ��. ȥ���� �°��� �������� �ʴ� ����� �վ��� ������, ������ ȥ�� ����� ������� �ʰ� �ڿ������� �Ŵ��� ����� ���� �Ǿ���. �Ƹ� ������ �ļ��� �ƴϾ����� �ʹ�.";
        }
        if (selectedButton == 3)
        {
            Txt_InfoSub.text = "������ ���� ����";
            Txt_Info.text = "4���� ������ ��� ��� ��ȥ�� ���� �Ҿ�ְ�, ������� ������Ų��.";
        }
        if (selectedButton == 4)
        {
            Txt_InfoSub.text = "������ ���� ����";
            Txt_Info.text = "4���� ������ ��� ��� ��ȥ�� ���� �Ҿ�ְ�, ������ ������Ų��.";
        }
    }

}

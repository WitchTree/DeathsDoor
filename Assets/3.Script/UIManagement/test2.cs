using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class test2 : MonoBehaviour
{

    [Header("ZXŰ")]
    public Button[] buttons;    
    

    [Header("ZXŰ �迭�Դٰ���")]
    public int index = 0;
    
    [Header("WASDŰ")]
    public GameObject[] selected;
    [Header("panelŰ �迭�Դٰ���")]
    public int index2 = 0;
   

    private void Start()
    {
        PressButton();
    }

    private void Update()
    {
        if ((Input.GetKeyDown(KeyCode.X))&& (!Input.GetKeyDown(KeyCode.W)))
        {
            index++;
            PressButton();
        }

        if (Input.GetKeyDown(KeyCode.W))
        {
            index2++;
            PressButton();
        }

        if (index == 5)
        {
            index = 0;
        }

        if (index2 == 5)
        {
            index2 = 0;
        }

    }


    private void PressButton()
    {
        
        if (index == 0)
        {
            buttons[0].Select();
            selected[0].SetActive(true);
            selected[1].SetActive(false);
            selected[2].SetActive(false);
            selected[3].SetActive(false);
            selected[4].SetActive(false);
            Debug.Log("�κ��丮");
        }

        if(index == 1)
        {            
            buttons[1].Select();
            selected[0].SetActive(false);
            selected[1].SetActive(true);
            selected[2].SetActive(false);
            selected[3].SetActive(false);
            selected[4].SetActive(false);

            Debug.Log("����");
        }

        if(index == 2)
        {
            buttons[2].Select();
            selected[0].SetActive(false);
            selected[1].SetActive(false);
            selected[2].SetActive(true);
            selected[3].SetActive(false);
            selected[4].SetActive(false);

            Debug.Log("������ ����");
        }

        if(index == 3)
        {
            buttons[3].Select();
            selected[0].SetActive(false);
            selected[1].SetActive(false);
            selected[2].SetActive(false);
            selected[3].SetActive(true);
            selected[4].SetActive(false);

            Debug.Log("��Ʈ�ѷ�");

        }

        if(index == 4)
        {
            buttons[4].Select();
            selected[0].SetActive(false);
            selected[1].SetActive(false);
            selected[2].SetActive(false);
            selected[3].SetActive(false);
            selected[4].SetActive(true);

            Debug.Log("�ɼ�");
        }

        if(index == 5)
        {
            index = 0;
        }

        if(index2+5==5)
        {
            buttons[index2 + 5].Select();
            Debug.Log("�Ŵ뿵ȥ1");
        }

        else if(index2 + 5 == 6)
        {
            buttons[index2 + 5].Select();
            Debug.Log("�Ŵ뿵ȥ2");
        }

        else if(index2 + 5 == 7)
        {
            buttons[index2 + 5].Select();
            Debug.Log("�Ŵ뿵ȥ3");
        }

        else if(index2 + 5 == 8)
        {
            buttons[index2 + 5].Select();
            Debug.Log("�Ŵ뿵ȥ4");
        }

        else if(index2 + 5 == 9)
        {
            buttons[index2 + 5].Select();
            Debug.Log("�Ŵ뿵ȥ5");
        }

       

    }  

    
}

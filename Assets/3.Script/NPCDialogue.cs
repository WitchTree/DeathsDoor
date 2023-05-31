using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCDialogue : MonoBehaviour
{
    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    GameObject Hud;

    public string[] Dialogue;
    private int index; //string�� ��ġ ã�µ� �ʿ�

    public float wordSpeed;
    public bool playerIsClose;
    public bool panelIsOpen =false;
    int num;


    bool talking = false;


    // Start is called before the first frame update
    void Start()
    {
        num = 0;
        Hud = GameObject.FindWithTag("HudUI");
    }

    // Update is called once per frame
    void Update()
    {
        Conversation();
    }

    private void Conversation()
    {
        if(Input.GetKeyDown(KeyCode.E) && playerIsClose && !talking)
        {
            //Dialogue �迭�� �� ��µɶ����� �� �ѹ��� EŰ�� ������ �ϰ���� 
            //�Ǵ� �迭�� �� ��µ��� �ʾ��� �� anykey�� ������ ��� �ʱ�ȭ
            //�����ؾ� ��? 
            if (DialogueUI.activeInHierarchy && !talking)
            {
                Hud.SetActive(true);
                zeroText();
                Debug.Log("����");

            }
            else
            {
                Debug.Log("��ȭ��");
                talking = true;
                DialogueUI.SetActive(true);
                Hud.SetActive(false);
                StartCoroutine(Typing());
            }
        }

        if (Txt_Dialogue.text == Dialogue[index])
        {
            NextLine();
        }

    }

    public void NextLine()
    {
        #region banker���� ���ɾ����� upgradeUI Ȱ��ȭ
        /*
         * End dialogue
        if (dialogue[dialogue.Length - 1] == "���̾�α�string" && num == �ε����ѹ� )
        {
            sceneMove.StartButton("Intro");//���� 
            num = 0;
            return;
        }
        */
        #endregion

        //num++;
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (index < Dialogue.Length - 1)
            {
                index++;
                Txt_Dialogue.text = "";
                StartCoroutine(Typing());
                Debug.Log("npc�� ���ϴ�����");
            }

            else
            {
                zeroText();
                DialogueUI.SetActive(false);
                talking = false;
            }
        }
  
    }

    public void zeroText() //text �ʱ�ȭ
    {
        Txt_Dialogue.text = "";
        index = 0;
        DialogueUI.SetActive(true);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerIsClose = true;
        }
        else
        {
            playerIsClose = false;
            zeroText();
        }
    }
    //private void OnTriggerExit(Collider other)
    //{
    //    if (other.CompareTag("Player"))
    //    {
    //        playerIsClose = false;
    //        zeroText();
    //    }
    //}

    IEnumerator Typing()
    {
        foreach (char letter in Dialogue[index].ToCharArray())
        {
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(wordSpeed);
        }
    }

}

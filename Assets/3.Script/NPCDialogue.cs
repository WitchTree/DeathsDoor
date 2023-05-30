using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCDialogue : MonoBehaviour
{
    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    public string[] Dialogue;
    private int index; //which will help us find position in the string ���ڿ��� ��ġ ã�µ� ����

    public float wordSpeed;
    public bool playerIsClose;
    int num;

    // Start is called before the first frame update
    void Start()
    {
        num = 0;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.E) && playerIsClose)
        {
            if (DialogueUI.activeInHierarchy)
            {
                Debug.Log("�÷��̾ ���� �ɾ���");
                zeroText();
            }
            else
            {
                DialogueUI.SetActive(true);
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
        /*
         * End dialogue
        if (dialogue[dialogue.Length - 1] == "���̾�α�string" && num == �ε����ѹ� )
        {
            sceneMove.StartButton("Intro");//���� 
            num = 0;
            return;
        }
        */
        num++;
        //EŰ�� ������ �Ѿ�� ����� 

        if (index < Dialogue.Length - 1)
        {
            index++;
            Txt_Dialogue.text = "";
            StartCoroutine(Typing());
        }
        else
        {
            zeroText();
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
    }
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerIsClose = false;
            zeroText();
        }
    }

    IEnumerator Typing()
    {
        foreach (char letter in Dialogue[index].ToCharArray())
        {
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(wordSpeed);
        }
    }

}
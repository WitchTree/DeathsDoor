using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCDialogue : MonoBehaviour
{
    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    public string[] Dialogue;
    private int index; //which will help us find position in the string 문자열의 위치 찾는데 도움

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
                Debug.Log("플레이어가 말을 걸었음");
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
        if (dialogue[dialogue.Length - 1] == "다이얼로그string" && num == 인덱스넘버 )
        {
            sceneMove.StartButton("Intro");//빼기 
            num = 0;
            return;
        }
        */
        num++;
        //E키를 눌러서 넘어가게 만들기 

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

    public void zeroText() //text 초기화
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
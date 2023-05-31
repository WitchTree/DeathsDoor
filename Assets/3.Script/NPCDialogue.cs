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
    private int index; //string의 위치 찾는데 필요

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
            //Dialogue 배열이 다 출력될때까지 딱 한번만 E키가 먹히게 하고싶음 
            //또는 배열이 다 출력되지 않았을 때 anykey를 누르면 출력 초기화
            //어케해야 됨? 
            if (DialogueUI.activeInHierarchy && !talking)
            {
                Hud.SetActive(true);
                zeroText();
                Debug.Log("ㅇㅋ");

            }
            else
            {
                Debug.Log("대화중");
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
        #region banker에게 말걸었을때 upgradeUI 활성화
        /*
         * End dialogue
        if (dialogue[dialogue.Length - 1] == "다이얼로그string" && num == 인덱스넘버 )
        {
            sceneMove.StartButton("Intro");//빼기 
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
                Debug.Log("npc가 말하는중임");
            }

            else
            {
                zeroText();
                DialogueUI.SetActive(false);
                talking = false;
            }
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

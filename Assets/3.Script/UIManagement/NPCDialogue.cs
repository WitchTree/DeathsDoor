using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCDialogue : MonoBehaviour
{
    public PlayerInput playerInput;

    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    public GameObject Hud;

    public string[] Dialogue;
    private int index; //string의 위치 찾는데 필요

    public float wordSpeed;
    public bool playerIsClose;
    private bool talking = false; //배열 출력이 끝날 때까지 E키 막아두기
    private int num;


    // Start is called before the first frame update
    void Start()
    {
        num = 0;                
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
                playerInput.isLock = true;
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
                playerInput.isLock = false;
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
            zeroText();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerIsClose = false;
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

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
    private int index; //string�� ��ġ ã�µ� �ʿ�

    public float wordSpeed;
    public bool playerIsClose;
    private bool talking = false; //�迭 ����� ���� ������ EŰ ���Ƶα�
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
                
                Debug.Log("����");

            }
            else
            {
                Debug.Log("��ȭ��");
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
                playerInput.isLock = false;
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

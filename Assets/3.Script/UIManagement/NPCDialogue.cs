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
    private int index; 

    public float wordSpeed;
    public bool playerIsClose;
    private bool talking = false; 
    private int num;
    [SerializeField] private GameObject commandBox;


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
            }

            else
            {
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
      
        //num++;
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (index < Dialogue.Length - 1)
            {
                index++;
                Txt_Dialogue.text = "";
                StartCoroutine(Typing());               
            }

            else
            {
                zeroText();
                DialogueUI.SetActive(false);
                talking = false;
                Invoke(nameof(ResetisLock),0.8f);
            }
        }
  
    }

    private void ResetisLock()
    {
        playerInput.isLock = false;
    }

    public void zeroText() 
    {
        Txt_Dialogue.text = "";
        index = 0;
        DialogueUI.SetActive(true);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            commandBox.SetActive(true);
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
            commandBox.SetActive(false);
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

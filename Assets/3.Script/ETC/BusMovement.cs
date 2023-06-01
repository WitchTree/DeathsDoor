using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BusMovement : MonoBehaviour
{

    public PlayerInput playerInput;
    private bool isTalking=true;
    public GameObject DialogueUI;
    public Text Txt_Dialogue;
    public string[] Dialogue;
    public int index;
    [SerializeField] private Animator busAnimator;
    [SerializeField] private GameObject player;
    public PlayerController playerController;


    void Start()
    {         
        Invoke(nameof(SetDialogue), 2.2f);
        playerInput.isLock = true;
        
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)&&!isTalking)
        {
            index++;           

            if (index == 2)
            {
                zeroText();
                StartCoroutine(Typing2());
            }
                     

            if(index==3)
            {
                player.SetActive(true);
                DialogueUI.SetActive(false);
                Invoke(nameof(ResetLock), 0.5f);
                Invoke(nameof(ChangeLayer), 4.5f);
                busAnimator.SetBool("isEnd", true);
            }
        }
    }

    private void SetBool()
    {
        isTalking = false;
    }

    private void ResetLock()
    {
        playerInput.isLock = false;
        
    }

    private void ChangeLayer()
    {
        playerController.ChangeLayersRecursively();
    }

    private void SetDialogue()
    {
        DialogueUI.SetActive(true);        
        zeroText();
        StartCoroutine(Typing());
        index++;
        Invoke(nameof(SetBool), 1.7f);
    }

    public void zeroText() //text √ ±‚»≠
    {
        Txt_Dialogue.text = "";        
        DialogueUI.SetActive(true);
    }
       

    IEnumerator Typing()
    {
        foreach (char letter in Dialogue[0].ToCharArray())
        {
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(0.07f);
        }
    }

    IEnumerator Typing2()
    {
        foreach (char letter in Dialogue[1].ToCharArray())
        {
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(0.07f);
        }
    }

   
}

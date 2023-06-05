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
    [SerializeField] GameObject bus;
    [SerializeField] GameObject arrow;
    [SerializeField] GameObject moveGlow;
    [SerializeField] Animator moveGlowAnimator;
    [SerializeField] GameObject HudUi;
 

    void Start()
    {         
        Invoke(nameof(SetDialogue), 2.2f);
        playerInput.isLock = true;
        //Cursor.visible = false;

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
                zeroText();
                player.SetActive(true);
                DialogueUI.SetActive(false);
                Invoke(nameof(ResetLock), 3.5f);
                Invoke(nameof(ChangeLayer), 4.5f);
                busAnimator.SetBool("isEnd", true);
                Invoke(nameof(SetMoveGlow), 2.7f);                
            }
        }
    }

    private void SetBool()
    {
        isTalking = false;
    }

    private void SetMoveGlow()
    {
        moveGlow.SetActive(true);
        HudUi.SetActive(true);
        Invoke(nameof(ResetmoveGlow), 3.3f);          
    }

    private void ResetmoveGlow()
    {
        moveGlowAnimator.SetBool("isEnd",true);
    }

    private void ResetLock()
    {
        playerInput.isLock = false;
        bus.SetActive(false);
        arrow.SetActive(true);

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

    public void zeroText() //text �ʱ�ȭ
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

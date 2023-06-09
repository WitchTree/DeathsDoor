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

    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;
    [SerializeField] GameObject audioManager01;

    private void Awake()
    {
        audio = GetComponent<AudioSource>();
        
    }

    void Start()
    {         
        Invoke(nameof(SetDialogue), 2.2f);
        playerInput.isLock = true;
        audio.PlayOneShot(audioClips[0]);
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
                Invoke(nameof(BusActive), 6.5f);
                Invoke(nameof(ChangeLayer), 4.5f);
                busAnimator.SetBool("isEnd", true);
                audio.PlayOneShot(audioClips[1]);
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
        arrow.SetActive(true);
        audioManager01.SetActive(true);

    }

    private void BusActive()
    {       
        bus.SetActive(false);
        
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
            audio.PlayOneShot(audioClips[2]);
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(0.07f);
        }
    }

    IEnumerator Typing2()
    {
        foreach (char letter in Dialogue[1].ToCharArray())
        {
            audio.PlayOneShot(audioClips[2]);
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(0.07f);
        }
    }

   
}

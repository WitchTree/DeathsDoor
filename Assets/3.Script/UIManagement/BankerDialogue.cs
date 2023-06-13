using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BankerDialogue : MonoBehaviour
{
    public AbilityUpgradeUIManagement abilityUpgradeUI;

    public GameObject upgradeUI;
    public PlayerInput playerInput;
    public PlayerController playerController;

    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    public GameObject Hud;
    public GameObject cursor;

    public string[] Dialogue;
    private int index; 

    public float wordSpeed;
    public bool playerIsClose;
    public bool isUpgrade=false;
    private bool talking = false; 
    private int num;

    [SerializeField] private GameObject commandBox;
    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;


    // Start is called before the first frame update
    private void Awake()
    {
        audio = GetComponent<AudioSource>();
    }
    void Start()
    {
        num = 0;                
    }

    // Update is called once per frame
    void Update()
    {
        Conversation();

        if (upgradeUI.activeSelf == true)
        {

            SetPlayerState();
            isUpgrade = true;
            Hud.SetActive(false);
            cursor.SetActive(false);
            abilityUpgradeUI.SetMenuUI();
            abilityUpgradeUI.UIKeyboardInput();

            if (Input.GetKeyDown(KeyCode.R))
            {
                isUpgrade = false;
                ResetPlayerState();
                Hud.SetActive(true);
                cursor.SetActive(true);
                upgradeUI.SetActive(false);
            }
        }
    }

    private void SetPlayerState()
    {
        playerInput.isLock = true;
        playerController.speed = 0;
    }

    private void ResetPlayerState()
    {
        playerInput.isLock = false;
        playerController.speed = 4;
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
                cursor.SetActive(false);
                playerInput.isLock = true;
                playerController.speed = 0;
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
        if (Input.GetKeyDown(KeyCode.Space))
        {
            if (index < Dialogue.Length - 1)
            {
                index++;
                Txt_Dialogue.text = "";
                cursor.SetActive(false);

                StartCoroutine(Typing());               
            }

            else
            {
                zeroText();
                DialogueUI.SetActive(false);
                talking = false;
                upgradeUI.SetActive(true);

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
            audio.PlayOneShot(audioClips[0]);
            Txt_Dialogue.text += letter;
            yield return new WaitForSeconds(wordSpeed);
        }
    }

}

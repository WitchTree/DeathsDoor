using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BankerDialogue : MonoBehaviour
{

    public AbilityUpgradeUIManagement abliltyUpgradeUI;

    public GameObject upgradeUI;
    public PlayerInput playerInput;
    public PlayerController playerController;

    public GameObject DialogueUI;
    public Text Txt_Dialogue;

    public GameObject Hud;

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
        //upgradeUI = GameObject.Find("AbilityUpgradeUI");
    }
    void Start()
    {
        num = 0;                
    }
    private void OnEnable()
    {
      
    }

    // Update is called once per frame
    void Update()
    {
        Conversation();

        if (upgradeUI.activeSelf == true)
        {
            SetPlayerState();            
            isUpgrade = true;
            abliltyUpgradeUI.isMenuAct = true;
            Hud.SetActive(false);
            abliltyUpgradeUI.cursor.SetActive(false);
            //abliltyUpgradeUI.SetMenuUI();
            abliltyUpgradeUI.UIKeyboardInput();
            //playerInput.isLock = true;
            if (Input.GetKeyDown(KeyCode.R))
            {                
                isUpgrade = false;
                Debug.Log("업그레이드UI 꺼져라얍");
                ResetPlayerState();
                //UpgradeAudio.PlayOneShot(abliltyUpgradeUI.UpgradeNavigation);
                abliltyUpgradeUI.isMenuAct = false;
                Hud.SetActive(true);
                abliltyUpgradeUI.cursor.SetActive(true);
                upgradeUI.SetActive(false);
            }
            
                       
        }
                

    }

    private void SetPlayerState()
    {
        //abliltyUpgradeUI.UpgradeAudio.PlayOneShot(abliltyUpgradeUI.UpgradeNavigation);
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
        //if (Dialogue[Dialogue.Length - 1] == "전투 능력을 향상시키고 싶나?" && num == 1)
        //{
        //    upgradeUI.SetActive(true);
        //    num = 0;
        //    return;
        //}

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

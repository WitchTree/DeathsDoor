using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.UI;

public class IntroScene : MonoBehaviour
{
    [SerializeField] GameObject player;
    public Vector3 firstPoint;
    public Vector3 secondPoint;
    public Vector3 thirdPoint;
    public Vector3 targetPoint;

    public GameObject firstPointObject;
    public GameObject secondPointObject;
    public GameObject thirdPointObject;
    public GameObject targetObject;
    public GameObject introDoor;
    public GameObject shortCutdoor;

    public bool isEntered;
    public bool isCorner;
    public bool isFinish;
    public bool isEnd;
    public bool isLookat;
    private bool talking = false;
    private bool isStart = false;

    public Animator playerAnimator;
    public Animator DialogueAnimator;
    public PlayerInput playerInput;
    public PlayerController playerController;
    public CinemachineVirtualCamera[] vcam;
    public GameObject DialogueUI;
    public Text Txt_Dialogue;
    public string[] Dialogue;
    public int index;
    public float wordSpeed;
    public GameObject introScene;
    public GameObject cursor;
    public GameObject HUDUI;
    public Animator HUDAnimator;

    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;


    private void Awake()
    {
        audio = GetComponent<AudioSource>();
        
    }

    private void Start()
    {
        firstPoint = firstPointObject.transform.position;
        secondPoint = secondPointObject.transform.position;
        thirdPoint = thirdPointObject.transform.position;
        targetPoint = targetObject.transform.position;
    }

    private void Update()
    {
        if (isEntered == true)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, firstPoint, 1.5f * Time.deltaTime);
            playerAnimator.SetBool("Run", false);
            playerAnimator.SetBool("Idle", false);
            playerAnimator.SetBool("FakeRun", true);
            playerController.speed = 0;
            //playerController.isRoll=true;           

            if (player.gameObject.transform.position == firstPoint)
            {
                TurCorner();
            }
        }

        if (isCorner == true)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, secondPoint, 2 * Time.deltaTime);
            playerAnimator.SetBool("Run", false);
            playerAnimator.SetBool("Idle", false);
            playerAnimator.SetBool("FakeRun", true);
            //playerController.isRoll=true;    

            if (player.gameObject.transform.position == secondPoint)
            {
                FinishMove();
                Invoke(nameof(StartDialogue), 0.4f);
            }

        }

        if (isFinish == true)
        {
            playerInput.isLock = true;
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, thirdPoint, 2 * Time.deltaTime);
            playerAnimator.SetBool("Run", false);
            playerAnimator.SetBool("Idle", false);
            playerAnimator.SetBool("FakeRun", true);
            //playerController.isRoll=true;    

            if (player.gameObject.transform.position == thirdPoint)
            {
                ResetMove();

            }

        }

        if (isEnd == true)
        {
            playerAnimator.SetBool("Run", false);
            playerAnimator.SetBool("FakeRun", false);
        }

        if (isLookat == true)
        {
            player.gameObject.transform.LookAt(targetPoint);
        }

        if (Input.GetKeyDown(KeyCode.Space) && isStart)
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
            }
        }

        if (index == 7 || index == 10 || index == 13 || index == 18)
        {
            DialogueAnimator.SetBool("isDoor", true);
            Invoke(nameof(PauseDialogue), 0.8f);
            if (index == 7)
            {
                index = 8;
            }

            else if (index == 10)
            {
                index = 11;
            }

            else if (index == 13)
            {
                index = 14;
            }

            else if (index == 18)
            {
                zeroText();
                Invoke(nameof(ResetCamera), 0.3f);
                Invoke(nameof(ResetPlayer), 0.8f);
                introScene.SetActive(false);
            }
        }


    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isEntered = true;
            isLookat = true;
            playerInput.isLock = true;
            isStart = true;
            playerAnimator.SetBool("Run", false);
            playerAnimator.SetBool("Idle", false);
            playerAnimator.SetBool("FakeRun", true);
            cursor.SetActive(false);
            HUDAnimator.SetBool("isEnter",true);
            //playerController.isRoll=true;    

        }
    }




    private void TurCorner()
    {
        isEntered = false;
        isCorner = true;
        vcam[0].gameObject.SetActive(false);
        vcam[1].gameObject.SetActive(true);
        HUDUI.SetActive(false);

    }

    private void FinishMove()
    {
        isCorner = false;
        isFinish = true;

    }

    private void ResetMove()
    {
        isFinish = false;
        isEnd = true;

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
            }
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


    public void zeroText()
    {
        Txt_Dialogue.text = "";
        index = 0;
    }


    private void StartDialogue()
    {
        if (isStart && !talking)
        {
            if (DialogueUI.activeInHierarchy && !talking)
            {
                zeroText();
            }
            else
            {
                talking = true;
                DialogueUI.SetActive(true);
                playerInput.isLock = true;
                StartCoroutine(Typing());
            }
        }

        if (Txt_Dialogue.text == Dialogue[index])
        {
            NextLine();
        }
    }

    private void PauseDialogue()
    {
        if (index == 8)
        {
            DialogueUI.SetActive(false);
            vcam[1].gameObject.SetActive(false);
            vcam[2].gameObject.SetActive(true);
            Invoke(nameof(ActivateDoor), 2.95f);
            Invoke(nameof(CameraCloseUp), 2.2f);
        }

        if (index == 11)
        {
            DialogueUI.SetActive(false);
            vcam[2].gameObject.SetActive(false);
            vcam[4].gameObject.SetActive(true);
            Invoke(nameof(ResumeDialogue), 1.4f);
            Invoke(nameof(ChendlerCameraCloseUp), 0.6f);
        }

        if (index == 14)
        {
            DialogueUI.SetActive(false);
            vcam[5].gameObject.SetActive(false);
            vcam[1].gameObject.SetActive(true);
            Invoke(nameof(ResumeDialogue), 1.4f);
        }
    }

    private void CameraCloseUp()
    {
        vcam[2].gameObject.SetActive(false);
        vcam[3].gameObject.SetActive(true);

        Invoke(nameof(CameraCloseDown), 3.4f);
    }

    private void CameraCloseDown()
    {
        vcam[3].gameObject.SetActive(false);
        vcam[1].gameObject.SetActive(true);
        Invoke(nameof(ResumeDialogue), 1.4f);
    }

    private void ChendlerCameraCloseUp()
    {
        audio.PlayOneShot(audioClips[1]);
        vcam[4].gameObject.SetActive(false);
        vcam[5].gameObject.SetActive(true);
    }

    private void ResetCamera()
    {
        vcam[1].gameObject.SetActive(false);
        vcam[0].gameObject.SetActive(true);
    }

    private void ResumeDialogue()
    {
        DialogueUI.SetActive(true);
        StartCoroutine(Typing());
    }
    private void ActivateDoor()
    {
        audio.PlayOneShot(audioClips[2]);
        introDoor.SetActive(true);
    }

    private void ResetPlayer()
    {
        introDoor.SetActive(false);
        shortCutdoor.SetActive(true);
        isEntered = false;
        isLookat = false;
        isEnd = false;
        playerInput.isLock = false;
        playerController.speed = 4;
        index = 0;
        DialogueUI.SetActive(false);
        cursor.SetActive(true);
        HUDUI.SetActive(true);
    }



}
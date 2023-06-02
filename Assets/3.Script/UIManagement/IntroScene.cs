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

    public bool isEntered;
    public bool isCorner;
    public bool isFinish;
    public bool isEnd;
    public bool isLookat;
    private bool talking = false;
    private bool isStart = false;

    public Animator playerAnimator;
    public PlayerInput playerInput;
    public PlayerController playerController;
    public CinemachineVirtualCamera vcam;
    public GameObject DialogueUI;
    public Text Txt_Dialogue;
    public string[] Dialogue;
    private int index;
    public float wordSpeed;





    private void Start()
    {
        vcam.m_Lens.OrthographicSize = 3.7f;       
        firstPoint =firstPointObject.transform.position;
        secondPoint=secondPointObject.transform.position;
        thirdPoint = thirdPointObject.transform.position;
        targetPoint=targetObject.transform.position;
    }

    private void Update()
    {
        if(isEntered==true)
        {            
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, firstPoint, 1.5f* Time.deltaTime);
            playerAnimator.SetBool("Run",true);
            playerController.speed = 0;            

            if (player.gameObject.transform.position==firstPoint)
            {
                TurCorner();                
            }
        }

        if(isCorner==true)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, secondPoint, 2* Time.deltaTime);
            playerAnimator.SetBool("Run",true);

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
            playerAnimator.SetBool("Run", true);

            if (player.gameObject.transform.position == thirdPoint)
            {
                ResetMove();                

            }
                       
        }

        if (isEnd == true)
        {
            playerAnimator.SetBool("Run", false);
        }

        if(isLookat==true)
        {
            player.gameObject.transform.LookAt(targetPoint);
        }

        if (Input.GetKeyDown(KeyCode.Space)&& isStart)
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

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isEntered=true;
            isLookat = true;
            playerInput.isLock = true;
            isStart = true;
            StartCoroutine("CameraZoomIn");
            StartCoroutine("CameraZoomIn1");
            StartCoroutine("CameraZoomIn2");

        }        
    }
    
   

    private void TurCorner()
    {
        isEntered=false;
        isCorner=true;           

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

    public IEnumerator CameraZoomIn()
    {
        for (float f= 3.7f; f >= 3f; f -= 0.01f)
        {
            vcam.m_Lens.OrthographicSize =f;
            yield return new WaitForSeconds(0.05f);
        }

    }

    public IEnumerator CameraZoomIn1()
    {

        var transposer = vcam.GetCinemachineComponent<CinemachineComposer>();

        for (float f = 1; f <= 2.71f; f += 0.02f)
        {
            transposer.m_TrackedObjectOffset.y = f;
            yield return new WaitForSeconds(0.01f);
        }

    }

    public IEnumerator CameraZoomIn2()
    {

        var transposer = vcam.GetCinemachineComponent<CinemachineComposer>();

        for (float f = 0f; f >= -1.55f; f -= 0.01f)
        {
            transposer.m_TrackedObjectOffset.x = f;
            yield return new WaitForSeconds(0.01f);
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
            }
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

    public void zeroText() 
    {
        Txt_Dialogue.text = "";
        index = 0;        
    }


    private void StartDialogue()
    {
        DialogueUI.SetActive(true);
        StartCoroutine(Typing());
    }





}

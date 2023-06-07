using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class EnterDoor : MonoBehaviour
{
    [SerializeField] GameObject player;
    [SerializeField] GameObject targetObject;
    [SerializeField] GameObject firstPointObject;
    [SerializeField] GameObject secondPointObject;
    [SerializeField] GameObject commandBox;
    [SerializeField] GameObject fadeImage;


    [SerializeField] Animator playerAnimator;
    [SerializeField] Animator doorAnimator;
   
    public Vector3 firstPoint;
    public Vector3 secondPoint;
    public Vector3 targetPoint;

    [SerializeField] PlayerController playerController;
    [SerializeField] PlayerInput playerInput;

    public bool isFirst;
    public bool isSecond;
    public bool isLookat;
    public bool isPressed;
    public bool isStart;

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
        targetPoint = targetObject.transform.position;

    }

    private void Update()
    {
        if(isLookat)
        {
            player.gameObject.transform.LookAt(targetPoint);
        }

        if(isFirst&& isStart)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, firstPoint, 0.5f * Time.deltaTime);
            Invoke(nameof(TurCorner), 0.9f);
            playerInput.isLock = true;
            if (player.gameObject.transform.position == firstPoint)
            {
                playerAnimator.SetBool("FakeRun", true);
                //TurCorner();
                Invoke(nameof(ImageFadeIn), 1.6f);
            }
        }

        if(isSecond&& isStart)
        {
            playerAnimator.SetBool("FakeRun", true);
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, secondPoint, 0.5f * Time.deltaTime);            
        }

        if(isPressed&& (Input.GetKeyDown(KeyCode.E)))
        {            
            SceneChange();
            isStart = true;
        }

    }

    

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            commandBox.SetActive(true);
            isPressed = true;
            isFirst = true;
           
        }
    }
       
    private void SceneChange()
    {
        doorAnimator.SetBool("isMoving", true);
        isPressed = false;
        playerController.speed = 0;        
        isLookat = true;
        Invoke(nameof(DoorSetting), 0.3f);
        Invoke(nameof(PlayerSetting), 1.5f);
        audio.PlayOneShot(audioClips[0]);

    }

    private void DoorSetting()
    {
        doorAnimator.SetBool("isMoving", false);
    }
       

    private void PlayerSetting()
    {
        doorAnimator.SetBool("isMoving", false);
        isFirst = true;
        playerAnimator.SetBool("Run", false);
        playerAnimator.SetBool("Idle", false);
        playerAnimator.SetBool("FakeRun", true);
    }

    private void TurCorner()
    {
        isSecond = true;
        isFirst = false;
        Invoke(nameof(ImageFadeIn), 1.0f);

    }

    private void ImageFadeIn()
    {
        fadeImage.SetActive(true);
        Invoke(nameof(SceneMovement), 1.0f);
    }

    private void SceneMovement()
    {
        SceneManager.LoadScene("1.Scene/02.The_Grove_of_Spirits");
    }


}

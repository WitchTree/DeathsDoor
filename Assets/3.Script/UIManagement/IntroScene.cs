using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class IntroScene : MonoBehaviour
{
    [SerializeField] GameObject player;
    public Vector3 firstPoint;
    public Vector3 secondPoint;
    public Vector3 thirdPoint;
    public GameObject firstPointObject;
    public GameObject secondPointObject;
    public GameObject thirdPointObject;
    public bool isEntered;
    public bool isCorner;
    public bool isFinish;
    public bool isEnd;
    public Animator playerAnimator;
    public PlayerInput playerInput;
    public PlayerController playerController;
    public CinemachineVirtualCamera vcam;




    private void Start()
    {
        vcam.m_Lens.OrthographicSize = 3.7f;       
        firstPoint =firstPointObject.transform.position;
        secondPoint=secondPointObject.transform.position;
        thirdPoint = thirdPointObject.transform.position;
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


    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isEntered=true;
            playerInput.isLock = true;
            StartCoroutine("CameraZoomIn");
            StartCoroutine("CameraZoomIn1");

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
        for (float f= 3.7f; f >= 2.4f; f -= 0.01f)
        {
            vcam.m_Lens.OrthographicSize =f;
            yield return new WaitForSeconds(0.005f);
        }

    }

    public IEnumerator CameraZoomIn1()
    {

        var transposer = vcam.GetCinemachineComponent<CinemachineComposer>();

        for (float f = 1; f <=2.14f; f += 0.02f)
        {
            transposer.m_TrackedObjectOffset.y = f;
            yield return new WaitForSeconds(0.005f);
        }

    }

    



}

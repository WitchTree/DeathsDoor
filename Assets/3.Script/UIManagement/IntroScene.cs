using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IntroScene : MonoBehaviour
{
    [SerializeField] GameObject player;
    public Vector3 firstPoint;
    public Vector3 secondPoint;
    public GameObject firstPointObject;
    public GameObject secondPointObject;
    public bool isEntered;
    public bool isCorner;
    public Animator playerAnimator;

    private void Start()
    {
        firstPoint=firstPointObject.transform.position;
        secondPoint=secondPointObject.transform.position;
    }

    private void Update()
    {
        if(isEntered==true)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, firstPoint, 1.5f* Time.deltaTime);
            playerAnimator.SetBool("Run",true);
            if(player.gameObject.transform.position==firstPoint)
            {
                TurCorner();
            }
        }

        if(isCorner==true)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, secondPoint, 2* Time.deltaTime);
            playerAnimator.SetBool("Run",true);
            if(player.gameObject.transform.position==secondPoint)
            {
                isCorner=false;
                playerAnimator.SetBool("Run",false);
            }
            
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isEntered=true;            
        }        
    }

    private void TurCorner()
    {
        isEntered=false;
        isCorner=true;
        playerAnimator.SetBool("Run",true);        

    }

  

}

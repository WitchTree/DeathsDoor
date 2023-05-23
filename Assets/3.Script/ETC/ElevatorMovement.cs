using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElevatorMovement : MonoBehaviour
{
    private float moveSpeed = 1f;

    private Vector3 topPoint, bottomPoint;
    [SerializeField] private GameObject elevatorTop;
    [SerializeField] private GameObject elevatorBottom;
    [SerializeField] private GameObject elevator;
    [SerializeField] private GameObject player;
    [SerializeField] private Animator elevatorAnimator;
    private int playerFlag=0;
    void Start()
    {
        topPoint=elevatorTop.transform.position;
        bottomPoint=elevatorBottom.transform.position;        
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            if(player.transform.position.y>153.9f)
            {
                playerFlag=1;    
                elevatorAnimator.SetTrigger("isTop");            
            }

            if(player.transform.position.y<150)
            {
                playerFlag=2;   
                elevatorAnimator.SetTrigger("isBottom");             
            }
        }
    }

    // Update is called once per frame
    private void Update()
    {
        if(playerFlag==1)
        {
            transform.position = Vector3.MoveTowards(transform.position, bottomPoint, moveSpeed * Time.deltaTime);
            //elevatorAnimator.SetTrigger("isBottom");
        }

        else if(playerFlag==2)
        {
            transform.position = Vector3.MoveTowards(transform.position, topPoint, moveSpeed * Time.deltaTime);
            //elevatorAnimator.SetTrigger("isTop");
        }

        if(elevator.transform.localPosition.y==topPoint.y||elevator.transform.localPosition.y==bottomPoint.y)
        {
            playerFlag=0;
        }
    }
}

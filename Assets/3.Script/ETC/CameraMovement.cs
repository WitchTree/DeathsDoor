using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovement : MonoBehaviour
{
    private float moveSpeed = 0.1f;

    private Vector3 leftPoint, rightPoint;
    private Vector3 leftRotation, rightRotation;

    private Vector3 currentTarget;
    private int moveDirection = 1;

    [SerializeField] GameObject left;
    [SerializeField] GameObject right;   

    void Start()
    {
        leftPoint = left.transform.position;
        rightPoint = right.transform.position;
        leftRotation = left.transform.rotation * Vector3.up;
        rightRotation = right.transform.rotation * Vector3.up;
    }

    // Update is called once per frame
    void Update()
    {
        if (moveDirection == 1)
        {
            currentTarget = rightPoint;            
           
        }
        
        else if(moveDirection==-1)
        {
            currentTarget = leftPoint;           
            
        }

        transform.position = Vector3.MoveTowards(transform.position, currentTarget, moveSpeed * Time.deltaTime);
      
        if(Vector3.Distance(transform.position,currentTarget)<=0.01f)
        {
            moveDirection *= -1;
        }

    }
}

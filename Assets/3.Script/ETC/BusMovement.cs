using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BusMovement : MonoBehaviour
{
    private float moveSpeed = 4f;

    private Vector3 firstPoint, secondPoint;
    [SerializeField] private GameObject Bus1stPoint;
    [SerializeField] private GameObject Bus2ndPoint;

    private int playerFlag = 0;
    void Start()
    {
        firstPoint = Bus1stPoint.transform.position;
        secondPoint = Bus2ndPoint.transform.position; 
    }

    private void Update()
    {
        transform.position = Vector3.MoveTowards(transform.position, firstPoint, moveSpeed * Time.deltaTime);   
    }
}

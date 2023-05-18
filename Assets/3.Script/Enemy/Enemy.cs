using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    //default
    public int attack = 1;
    public float hp;
    public int sprit;
    public bool isDead = false;

    //player detect
    public bool isAttracted = false;
    public float attractRadius = 4f;
    public float moveRadius = 6f;

    [SerializeField]PlayerController playerController;

    protected virtual void Start()
    {
        playerController = FindObjectOfType<PlayerController>();
    }

    protected virtual void Update()
    {
        DetectPlayer();
    }

    protected virtual void Move()
    {

    }

    protected virtual void DetectPlayer()
    {
        Vector3 offsetPlayer = transform.position - playerController.gameObject.transform.position;
        if (offsetPlayer.sqrMagnitude < attractRadius)
        {
            Debug.Log("Find Player");
            isAttracted = true;
        }
    }
}

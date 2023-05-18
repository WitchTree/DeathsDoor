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
    public bool isResetPos = false;
    public float attractRadius = 4f;
    public float moveRadius = 8f;

    protected virtual void Start()
    {
        
    }

    protected virtual void Update()
    {
        //DetectPlayer();
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    //default
    //public int attack = 1;
    [HideInInspector] public float hp;
    [HideInInspector] public float maxHp;
    [HideInInspector] public int spirit;
    [HideInInspector] public bool isDead = false;
    [HideInInspector] public bool isAttacking = false;

    //player detect
    [HideInInspector] public bool isAttracted = false;
    [HideInInspector] public bool isResetPos = false;
    [HideInInspector] public float attractRadius = 4f;
    [HideInInspector] public float moveRadius = 8f;
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    //default
    public int attack = 1;
    public int hp;
    public int maxHp;
    public int spirit;
    public bool isDead = false;
    public bool isAttacking = false;

    //player detect
    public bool isAttracted = false;
    public bool isResetPos = false;
    public float attractRadius = 4f;
    public float moveRadius = 8f;
}

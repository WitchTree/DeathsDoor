using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_State : MonoBehaviour
{
    public int skill = 4; // ��ų ��
    public int life = 4;
    public int seed = 2;//���� 

    public PlayerInput playerInput;
    public Bat bat;


    private void Awake()
    {
        playerInput = FindObjectOfType<PlayerInput>();
        bat = FindObjectOfType<Bat>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy") && bat.isAttacking)
        {
            life--;
            Debug.Log(life);
        }
    }


}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Vine : MonoBehaviour
{
    PlayerState playerState;

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerState.life--;
            Debug.Log("ÇÃ·¹ÀÌ¾î: ¾Ç !");
        }
    }
}

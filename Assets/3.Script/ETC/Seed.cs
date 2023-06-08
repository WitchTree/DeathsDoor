using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Seed : MonoBehaviour
{
    public PlayerInput playerInput;
    public PlayerState playerState;

    void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
        playerInput = FindObjectOfType<PlayerInput>();
    }


    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && Input.GetKeyDown(KeyCode.E))
        {
            playerState.seed++;
            Debug.Log(playerState.seed);
            Destroy(gameObject);
        }
    }


}

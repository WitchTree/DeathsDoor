using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMotherDMGTrigger : MonoBehaviour
{
    PlayerState playerState;
    PlayerOnDamage playerOnDamage;

    private void Start()
    {
        playerState = FindObjectOfType<PlayerState>();
        playerOnDamage = FindObjectOfType<PlayerOnDamage>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerOnDamage.PlayerSuffered();
        }
    }
}

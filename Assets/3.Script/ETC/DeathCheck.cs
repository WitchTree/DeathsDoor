using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathCheck : MonoBehaviour
{    
    [SerializeField] private PlayerRespawn playerRespawn;        

    public void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            playerRespawn.isFall=true;
            Invoke(nameof(ResetPoint), 0.1f);
        }
    }

    private void ResetPoint()
    {
        playerRespawn.isFall=false;
    }
}

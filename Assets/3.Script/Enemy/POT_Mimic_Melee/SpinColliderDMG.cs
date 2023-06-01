using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinColliderDMG : MonoBehaviour
{
    //플레이어 클래스
    PlayerOnDamage playerOnDamage;

    private void Start()
    {
        playerOnDamage = FindObjectOfType<PlayerOnDamage>();
    }

    private void OnTriggerEnter(Collider other)
    {
        //플레이어 닳기
        if (other.CompareTag("Player") && !playerOnDamage.isSuffer)
        {
            playerOnDamage.PlayerSuffered();
        }
    }
}

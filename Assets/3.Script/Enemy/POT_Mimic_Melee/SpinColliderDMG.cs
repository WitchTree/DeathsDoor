using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinColliderDMG : MonoBehaviour
{
    //�÷��̾� Ŭ����
    PlayerOnDamage playerOnDamage;

    private void Start()
    {
        playerOnDamage = FindObjectOfType<PlayerOnDamage>();
    }

    private void OnTriggerEnter(Collider other)
    {
        //�÷��̾� ���
        if (other.CompareTag("Player") && !playerOnDamage.isSuffer)
        {
            playerOnDamage.PlayerSuffered();
        }
    }
}

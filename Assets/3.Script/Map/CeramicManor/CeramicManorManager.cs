using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CeramicManorManager : MonoBehaviour
{
    [SerializeField] Transform playerSpawnPoint;
    [SerializeField] Transform player;

    private void Start()
    {
        player.position = playerSpawnPoint.position;
    }
}

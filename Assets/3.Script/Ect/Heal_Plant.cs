using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Heal_Plant : MonoBehaviour
{
    public PlayerController player;
    private bool isSeed = false;
    private bool isPlay = false;

    private Animator ani;

    void Start()
    {
        ani = GetComponent<Animator>();
    }

    void Update()
    {
        isSeed = isPlay;
        ani.SetBool("Seed", isSeed);
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && Input.GetKeyDown(KeyCode.E) && !isSeed && player.seed > 0)
        {
            isPlay = true;
            player.seed--;
            Debug.Log(player.seed);
            Debug.Log(isSeed);
        }

        if (other.CompareTag("Player") && Input.GetKeyDown(KeyCode.E) && isSeed)
        {
            player.life += 3;
            if (player.life > 4)
            {
                player.life = 4;
            }

            isPlay = false;
            Debug.Log(player.life);
        }
    }



}

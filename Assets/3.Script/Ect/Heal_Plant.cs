using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// 딱 한 번에 심고 먹을 수 있음
public class Heal_Plant : MonoBehaviour
{
    public Player_State playerState;
    private bool isSeed = false;
    private bool isCheck = false;
    private int seedCount = 1;

    private Animator ani;

    private void Awake()
    {
        playerState = FindObjectOfType<Player_State>();
    }
    void Start()
    {
        ani = GetComponent<Animator>();
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && playerState.seed > 0 && !isCheck)//화분 범위 안에 있고 플레이어가 씨앗이 있고 씨앗을 심은 적이 없다면
        {
            isSeed = true;//씨앗이 있음);
        }

        else if (other.CompareTag("Player") && isCheck) //씨앗이 심어져 있다면
        {

            Invoke("IsSeed_Invoke", 3f);
            //isSeed = false; // 씨앗 이제 더 못 심음

        }
    }
    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.E) && isSeed && seedCount == 1)//씨앗 심기
        {
            playerState.seed--;//씨앗이 사라짐
            seedCount--;

            isCheck = true;//씨앗을 심음
            ani.SetBool("Seed", isSeed);
            //ani.SetTrigger("SeedTest");
            //isCheck = true;
            Debug.Log("씨앗 심었당");
            Debug.Log(playerState.seed);
        }
        else if (Input.GetKeyDown(KeyCode.E) && !isSeed && isCheck)//씨앗 먹기
        {
            playerState.life += 3;
            if (playerState.life > 4)
            {
                playerState.life = 4;
            }
            ani.SetBool("Seed", isSeed);

            Debug.Log("씨앗 이제 못 심음");
        }
    }

    //애니메이션 끝난 후 입력을 받기 위해서 작성
    private void IsSeed_Invoke()
    {
        isSeed = false; // 씨앗 이제 더 못 심음    
    }


}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// 딱 한 번에 심고 먹을 수 있음
public class Heal_Plant : MonoBehaviour
{
    public Player_State player;
    private bool isSeed = false;
    private bool isCheck = false;
    private int seedCount = 1;

    private Animator ani;

    void Start()
    {
        ani = GetComponent<Animator>();
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && player.seed > 0 && !isCheck)//화분 범위 안에 있고 플레이어가 씨앗이 있고 씨앗을 심은 적이 없다면
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
            player.seed--;//씨앗이 사라짐
            seedCount--;

            isCheck = true;//씨앗을 심음
            ani.SetBool("Seed", isSeed);
            ani.SetTrigger("SeedTest");
            //isCheck = true;
            Debug.Log("씨앗 심었당");
            Debug.Log( player.seed);
        }
        else if (Input.GetKeyDown(KeyCode.E) && !isSeed && isCheck)//씨앗 먹기
        {
            player.life += 3;
            if (player.life > 4)
            {
                player.life = 4;
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

using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerOnDamage : MonoBehaviour
{
    public PlayerState playerState;

    public Bat bat;

    private Animator ani;
    public bool isSuffer = false;
    public bool canSuffer = true;


    private void Awake()
    {
        bat = FindObjectOfType<Bat>();
        playerState = GetComponent<PlayerState>();
    }

    private void Start()
    {
        ani = GetComponent<Animator>();
    }

    public void PlayerSuffered()
    {
        if (canSuffer)
        {
            isSuffer = true;
            playerState.life--;

            if (playerState.life <= 0)
            {
                ani.SetTrigger("Death");
            }
            else
            {
                ani.SetTrigger("Suffer");
            }
        }
        
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy") && !isSuffer && bat.isAttacking)
        {
            playerState.life--;
            Debug.Log("목숨");
            Debug.Log(playerState.life);

            StartCoroutine(onDamage_co());

            if (playerState.life <= 0)
            {
                ani.SetTrigger("Death");
            }
            else
            {
                StartCoroutine("Suffer_co");
            }
        }
    }

    private IEnumerator Suffer_co()//이동 입력 받지 않게 할 예정 근데 정확히 무슨 코드를 써야할 지 몰라서 일단 움직임 스크립트에서 제한하고 나중에 방법 찾으면 수정
    {
        ani.SetTrigger("Suffer");
        isSuffer = true;

        ani.SetBool("Suffer", isSuffer);
        yield return new WaitForSeconds(1.5f);

        isSuffer = false;
        ani.SetBool("Suffer", isSuffer);
    }

    public void HitPot(Vector3 position)
    {
        playerState.life --;
        Debug.Log("플레이어 HP : " + playerState.life);
    }

    IEnumerator onDamage_co()
    {
        
        yield return new WaitForSeconds(1f);
        Debug.Log("아야" );
    }

}

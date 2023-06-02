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
            Debug.Log("���");
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

    private IEnumerator Suffer_co()//�̵� �Է� ���� �ʰ� �� ���� �ٵ� ��Ȯ�� ���� �ڵ带 ����� �� ���� �ϴ� ������ ��ũ��Ʈ���� �����ϰ� ���߿� ��� ã���� ����
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
        Debug.Log("�÷��̾� HP : " + playerState.life);
    }

    IEnumerator onDamage_co()
    {
        
        yield return new WaitForSeconds(1f);
        Debug.Log("�ƾ�" );
    }

}

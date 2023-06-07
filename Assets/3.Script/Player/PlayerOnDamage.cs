using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerOnDamage : MonoBehaviour
{
    public PlayerState playerState;

    private Animator ani;
    public bool isSuffer = false;
    public bool canSuffer = true;

    public AudioSource audio;
    public AudioClip death;
    private void Awake()
    {
        playerState = GetComponent<PlayerState>();
        audio = GetComponent<AudioSource>();
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
        if (other.CompareTag("Enemy") && !isSuffer)
        {
            playerState.life--;
            Debug.Log("���");
            Debug.Log(playerState.life);

            StartCoroutine(onDamage_co());

            if (playerState.life <= 0)
            {
                ani.SetTrigger("Death");
                audio.PlayOneShot(death);
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
    }

    IEnumerator onDamage_co()
    {     
        yield return new WaitForSeconds(1f);
    }

}

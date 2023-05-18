using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Bat : Enemy
{
    //Move
    Vector3 destination;
    Vector3 currPos;
    [SerializeField] Transform player, patrol;
    [SerializeField] NavMeshAgent agent;
    float searchTime = 15f;

    //Animator
    Animator batAni;

    //Attack
    float attackBetTime = 5f;
    float attackTime = 0f;
    bool isAttack = false;

    protected override void Start()
    {
        SetBat();
        base.Start();
    }

    protected override void Update()
    {
        base.Update();
        if(!isAttracted && !isAttack)
        {
            destination = patrol.position;
            agent.destination = destination;
            agent.speed = 20f;
        }
        else if (isAttracted && !isAttack)
        {
            destination = player.position;
            agent.destination = destination;
            agent.speed = 30f;
        }
        else
        {
            agent.speed = 0f;
        }
        Attack();
    }

    void SetBat()
    {
        this.hp = 1;
        this.sprit = 2;

        batAni = GetComponent<Animator>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            batAni.SetTrigger("Shock");
            isAttracted = true;
        }
    }

    /*
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isAttracted = false;
        }
    }
    */

    IEnumerator SearchPlayer()
    {
        yield return new WaitForSeconds(searchTime);
        isAttracted = false;
    }

    void Attack()
    {
        //bat => bite
        if (attackTime >= attackBetTime && !isAttack && isAttracted)
        {
            isAttack = true;
            batAni.SetTrigger("Bite");
            destination = currPos;
            StartCoroutine(BiteTime_co());

            //isAttack == true 이고 collider 충돌하면 player hp 닳게 만들기
        }
        attackTime += Time.deltaTime;
    }

    IEnumerator BiteTime_co()
    {
        float time = 0f;
        while (time < 3f)
        {
            time += Time.deltaTime;
            yield return null;
        }
        isAttack = false;
        attackTime = 0f;
    }
}

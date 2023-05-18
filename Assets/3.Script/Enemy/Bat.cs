using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Bat : Enemy
{
    //Move
    Vector3 destination;
    [SerializeField] Transform player, patrol;
    [SerializeField] NavMeshAgent agent;
    float searchTime = 15f;

    protected override void Start()
    {
        SetBat();
        base.Start();
    }

    protected override void Update()
    {
        base.Update();
        if(!isAttracted)
        {
            destination = patrol.position;
            agent.destination = destination;
            agent.speed = 20f;
        }
        else
        {
            destination = player.position;
            agent.destination = destination;
            agent.speed = 30f;
        }
    }

    void SetBat()
    {
        this.hp = 1;
        this.sprit = 2;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Chasing");
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
}

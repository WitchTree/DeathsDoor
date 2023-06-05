using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class HyperRotationState : StateMachineBehaviour
{
    //player
    Transform player;
    
    //Forest Mother component
    Transform fMTransform;
    ForestMother forestMother;
    NavMeshAgent agent;

    //Hyper Spin
    float hyperSpinMaxTime = 5f;
    Vector3 centerPos;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        player = GameObject.FindWithTag("Player").transform;

        forestMother = animator.GetComponent<ForestMother>();
        fMTransform = animator.GetComponent<Transform>();
        agent = animator.GetComponent<NavMeshAgent>();

        forestMother.hyperSpinTime = 0f;
        agent.speed = 10f;
        centerPos = fMTransform.position;

        forestMother.PlayHmmSound();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (forestMother.hyperSpinTime < hyperSpinMaxTime) 
        {
            agent.destination = player.position;
            forestMother.hyperSpinTime += Time.deltaTime;
        }
        else if ((fMTransform.position - centerPos).sqrMagnitude < 1f)
        {
            //fMTransform.position = centerPos;
            animator.SetBool("isHyperSpinEnd", true);
        }
        else 
        {
            agent.destination = centerPos;
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother.hyperSpinTime = 0f;
        animator.SetBool("isHyperSpinEnd", false);
        animator.SetBool("isSpin", false);
        agent.speed = 0f;

        forestMother.StopHmmSound();
    }
}

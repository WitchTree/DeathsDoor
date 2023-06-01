using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class SpinState : StateMachineBehaviour
{
    //Pot
    POT_Mimic_Melee pot;
    NavMeshAgent agent;

    //Player
    Transform player;
    PlayerOnDamage playerOnDamage;

    Vector3 destination;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        pot = animator.GetComponent<POT_Mimic_Melee>();
        agent = animator.GetComponent<NavMeshAgent>();
        player = FindObjectOfType<PlayerController>().transform;
        playerOnDamage = FindObjectOfType<PlayerOnDamage>();


        pot.StartSpin();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (!playerOnDamage.isSuffer)
        {
            destination = player.position;
            agent.destination = destination;
            agent.speed = 1f;
        }
        else
        {
            agent.speed = 0f;
        }
        
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        pot.EndSpin();
        agent.speed = 0f;
    }
}

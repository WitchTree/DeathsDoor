using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeadState : StateMachineBehaviour
{
    GameObject forestMother;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother = animator.gameObject;
        forestMother.GetComponent<ForestMother>().ChangeMaterialDead();
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    //override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    
    //}

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother.SetActive(false);
    }
}

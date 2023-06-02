using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LiftIdleState : StateMachineBehaviour
{
    Transform fMTransform;
    ForestMother forestMother;


    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        fMTransform = animator.GetComponent<Transform>();
        forestMother = animator.GetComponent<ForestMother>();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (forestMother.isAttackedL) 
        {
            animator.SetBool("isAttackedL", true);
        }
        else if (forestMother.isAttackedR) {
            animator.SetBool("isAttackedR", true);
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("isAttackedL", false);
        animator.SetBool("isAttackedR", false);
    }
}

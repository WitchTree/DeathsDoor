using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlamSlowEndState : StateMachineBehaviour
{
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("Slam", false);
        animator.SetBool("Hyper", true);
    }
}

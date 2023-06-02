using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndHyperState : StateMachineBehaviour
{
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("Hyper", false);
        animator.SetBool("Lift", true);
    }
}

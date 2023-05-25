using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartSpinState : StateMachineBehaviour
{
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("isSpin", true);
    }
}

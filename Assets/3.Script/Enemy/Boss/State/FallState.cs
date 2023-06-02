using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FallState : StateMachineBehaviour
{
    ForestMother forestMother;

    public override void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother = animator.GetComponent<ForestMother>();
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.SetBool("Lift", false);
        animator.SetBool("Slam", true);
        animator.SetBool("isFall", false);

        forestMother.Fall();
    }
}

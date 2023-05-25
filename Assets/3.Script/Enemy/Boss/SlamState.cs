using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlamState : StateMachineBehaviour
{
    Transform fMTransform;
    ForestMother_S forestMother;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        fMTransform = animator.GetComponent<Transform>();
        forestMother = animator.GetComponent<ForestMother_S>();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        fMTransform.Rotate(forestMother.slamRot * Time.deltaTime);
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if ((forestMother.slamPlayCount % 2).Equals(1)) {
            animator.SetBool("isSlamPlayAgain", false);
        }
        else {
            animator.SetBool("isSlamPlayAgain", true);
        }
        forestMother.slamPlayCount++;
        animator.SetBool("isSpin", false);
    }
}

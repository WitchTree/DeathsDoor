using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SlamSlowIdleState : StateMachineBehaviour
{
    Transform fMTransform;
    ForestMother forestMother;

    float slamSlowMaxTime = 9f;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        fMTransform = animator.GetComponent<Transform>();
        forestMother = animator.GetComponent<ForestMother>();
        
        forestMother.slamSlowTime = 0f;

        forestMother.PlayHmmSound();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (forestMother.slamSlowTime < slamSlowMaxTime) {
            fMTransform.Rotate(forestMother.slamRot * Time.deltaTime * 2f);
            forestMother.slamSlowTime += Time.deltaTime;
        }
        else {
            animator.SetBool("isSlamSlowEnd", true);
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother.slamSlowTime = 0f;
        forestMother.StopHmmSound();
        animator.SetBool("isSlamSlowEnd", false);
        animator.SetBool("isSpin", false);
    }
}

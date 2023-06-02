using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LiftStartState : StateMachineBehaviour
{
    ForestMother forestMother;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        forestMother = animator.GetComponent<ForestMother>();
        forestMother.LiftStart();
    }
}

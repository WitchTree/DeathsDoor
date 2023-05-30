using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinState : StateMachineBehaviour
{
    POT_Mimic_Melee pot;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        pot = animator.GetComponent<POT_Mimic_Melee>();
        pot.StartSpin();
    }

    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    //override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    //{
    //    
    //}

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        pot.EndSpin();
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RollAtkFinalState : StateMachineBehaviour
{
    Sword sword;
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.TryGetComponent(out sword);
        sword.RollSlash.SetActive(true);
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
    }
}

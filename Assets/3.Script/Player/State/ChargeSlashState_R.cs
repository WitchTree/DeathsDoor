using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChargeSlashState_R : StateMachineBehaviour
{
    Sword sword;
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.TryGetComponent(out sword);
        sword.StrongSlash_R.SetActive(true);
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
    }
}

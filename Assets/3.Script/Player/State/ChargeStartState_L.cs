using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChargeStartState_L : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    public bool isCharge = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isCharge = true;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        playercontroller.Lookat();
        if (!playerInput.isRollATk)
        {
            isCharge = false;
             playercontroller.Lookat();
            animator.SetBool("ChargeStart_L", isCharge);
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {

    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdAtk : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        sword.swordBack.SetActive(false);
        sword.swordRighthand.SetActive(false);
        sword.swordLefthand.SetActive(true);
        sword.LightSlash_L.SetActive(true);
    }


    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.95f)
        {
            animator.SetInteger("Combo", 0);
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecAtk : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    public bool isClick = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        sword.swordBack.SetActive(false);
        sword.swordRighthand.SetActive(true);
        sword.swordLefthand.SetActive(false);
        sword.LightSlash_R.SetActive(true);
    }


    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (playerInput.isLight)
        {
            isClick = true;
        }

        if (isClick)
        {
            animator.SetInteger("Combo", 3);
        }

    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        sword.Normalize();
        animator.SetInteger("Combo", 0);

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RollAtkState : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    Rigidbody player_R;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        animator.TryGetComponent(out player_R);
        sword.swordBack.SetActive(false);
        sword.swordRighthand.SetActive(true);
        sword.swordLefthand.SetActive(false);
        player_R.velocity = Vector3.zero;
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if(animator.GetCurrentAnimatorStateInfo(0).normalizedTime==0.99f)
        {
            sword.RollSlash.SetActive(true);
        }
    }
}

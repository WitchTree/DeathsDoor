using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RollState : StateMachineBehaviour
{
    Sword sword;
    Transform playerTransform;
    PlayerInput playerInput;
    PlayerController playerController;
    Rigidbody player_R;
    Vector3 velocity;

    public bool isClick = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playerController);
        animator.TryGetComponent(out player_R);
        sword.Normalize();
        Vector3 roll_Dir = playerTransform.forward;
        player_R.velocity = Vector3.zero;
        player_R.AddForce(roll_Dir * playerController.roll_Dis, ForceMode.VelocityChange);
    }


    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {

        if (playerInput.isStrong)
        {
            isClick = true;
        }
        if (animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.9f)
        {
            if (isClick)
            {
                sword.swordBack.SetActive(false);
                sword.swordRighthand.SetActive(true);
                sword.swordLefthand.SetActive(false);
                animator.SetTrigger("RollHeavy");
            }
        }

    }
}

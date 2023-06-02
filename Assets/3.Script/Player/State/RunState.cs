using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RunState : StateMachineBehaviour
{

    Sword sword;
    Transform playerTransform;
    PlayerInput playerInput;
    PlayerController playerController;
    public bool isClick = false;
    public bool isRun = true;
    public bool isRoll = false;
    public bool stopBotton = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        isRun = true;
        isRoll = false;
        stopBotton = false;
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playerController);
        sword.Normalize();// idle 상태일 때 칼 등 뒤로 보내기.
    }


    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (playerInput.isLight)
        {
            isClick = true;
        }
        if (isClick)
        {
            sword.SetHand();
            animator.SetInteger("Combo", 1);
        }
        if(playerInput.isRoll)
        {
            isRoll = true;
        }
        if(isRoll)
        {
            animator.SetTrigger("RollTrigger");
        }
        if ((playerInput.Move_Value != 0 || playerInput.Rotate_Value != 0))
        {
            stopBotton = true;
            Vector3 velocity = new Vector3(playerInput.Rotate_Value, 0, playerInput.Move_Value).normalized;
            playerTransform.position += velocity * playerController.speed * Time.deltaTime;
            playerTransform.LookAt(playerTransform.position + velocity);
        }
        else
        {
            stopBotton = false;
            isRun = false;
            animator.SetBool("Run", isRun);
        }

    }
}

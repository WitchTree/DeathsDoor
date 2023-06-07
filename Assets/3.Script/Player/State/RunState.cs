using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RunState : StateMachineBehaviour
{

    Sword sword;
    Transform playerTransform;
    PlayerInput playerInput;
    PlayerController playerController;
    public bool isCharge_L = false;
    public bool isCharge_R = false;
    public bool isLight = false;
    public bool isRun = true;
    public bool isRoll = false;
    public bool stopBotton = false;
    public bool isStrong = false;


    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isCharge_L = false;
        isCharge_R = false;
        isStrong = false;
        isLight = false;
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
        playerController.Lookat();
        if (playerInput.isLight)
        {
            isLight = true;
        }

        if (isLight)
        {
            sword.SetHand();
            animator.SetInteger("Combo", 1);
        }
        if (playerInput.isRollATk)
        {
            isStrong = true;
        }
        if(isStrong)
        {
            sword.SetHand();
            if (sword.hand == Sword.Hand.RightHand)
            {
                isCharge_L = false;
                isCharge_R = true;
                sword.swordBack.SetActive(false);
                sword.swordRighthand.SetActive(false);
                sword.swordLefthand.SetActive(true);
                animator.SetBool("ChargeStart_R", isCharge_R);
                isCharge_R = false;

            }
            if (sword.hand == Sword.Hand.LeftHand)
            {
                isCharge_R = false;
                isCharge_L = true;
                sword.swordBack.SetActive(false);
                sword.swordRighthand.SetActive(true);
                sword.swordLefthand.SetActive(false);
                animator.SetBool("ChargeStart_L", isCharge_L);
                isCharge_L = false;
            }
        }
        if (playerInput.isRoll)
        {
            isRoll = true;
        }
        if (isRoll)
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


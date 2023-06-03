using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IdleState : StateMachineBehaviour
{
    Sword sword;
    Transform playerTransform;
    PlayerInput playerInput;
    PlayerController playerController;
    public bool isClick = false;
    public bool isLight = false;
    public bool isRun = false;
    public bool isRoll = false;
    public bool isCharge_L = false;
    public bool isCharge_R = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        isLight = false;
        isRun = false;
        isRoll = false;
        isCharge_L = false;
        isCharge_R = false;
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playerController);
        sword.Normalize();
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (playerInput.isLight&&!isClick)
        {
            isLight = true;
            isClick = true;
        }
        else if (playerInput.isRollATk && !isClick)
        {
            isClick = true;
            sword.SetHand();
            if (sword.hand == Sword.Hand.RightHand)
            {
                Debug.Log("¿À¸¥¼Õ");
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
                Debug.Log("¿Þ¼Õ");
                isCharge_R = false;
                isCharge_L = true;
                sword.swordBack.SetActive(false);
                sword.swordRighthand.SetActive(true);
                sword.swordLefthand.SetActive(false);
                animator.SetBool("ChargeStart_L", isCharge_L);
                isCharge_L = false;
            }
        }
        else if (playerInput.isRoll && !isClick)
        {
            isClick = true;
            isRoll = true;
        }
        if (isLight&&isClick)
        {
            sword.SetHand();
            sword.swordBack.SetActive(false);
            sword.swordRighthand.SetActive(true);
            sword.swordLefthand.SetActive(false);
            sword.LightSlash_L.SetActive(true);
            animator.SetInteger("Combo", 1);
        }
        if (isRoll && isClick)
        {
            animator.SetTrigger("RollTrigger");
        }
        if (playerInput.Move_Value != 0 || playerInput.Rotate_Value != 0)
        {
            isRun = true;
            animator.SetBool("Run", isRun);
        }
    }
}

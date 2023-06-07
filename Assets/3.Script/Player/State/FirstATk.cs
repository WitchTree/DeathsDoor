using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstATk : StateMachineBehaviour
{
    Transform playerTransform;
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    Rigidbody player_R;
    public float atkDash = 1.0f;
    int dashCnt = 0;
    public int dashLimit = 0;
    public bool isClick = false;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        animator.TryGetComponent(out player_R);
        animator.SetBool("Run", false);
        sword.swordBack.SetActive(false);
        sword.swordRighthand.SetActive(true);
        sword.swordLefthand.SetActive(false);
        sword.LightSlash_L.SetActive(true);
        playercontroller.Lookat();
        dashCnt = 0;
    }


    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        if (dashCnt < dashLimit)
        {
            dashCnt++;
            Vector3 dash_Dir = playerTransform.forward;
            playerTransform.position += dash_Dir * atkDash * Time.deltaTime;
            playerTransform.LookAt(playerTransform.position + dash_Dir);
        }

        if (playerInput.isLight)
        {
            isClick = true;
        }
        if (animator.GetCurrentAnimatorStateInfo(0).normalizedTime > 0.95f)
        {
            if (isClick)
            {
                sword.SetHand();
                animator.SetInteger("Combo", 2);
            }
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        sword.Normalize();
        animator.SetInteger("Combo", 0);

    }

}

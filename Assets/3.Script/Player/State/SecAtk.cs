using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecAtk : StateMachineBehaviour
{
    Transform playerTransform;
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    public AudioSource audio;
    public AudioClip LightAtk;
    public bool isClick = false;
    public float atkDash = 1.0f;
    int dashCnt = 0;
    public int dashLimit = 0;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isClick = false;
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out audio);
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        sword.swordBack.SetActive(false);
        sword.swordRighthand.SetActive(false);
        sword.swordLefthand.SetActive(true);
        sword.LightSlash_R.SetActive(true);
        playercontroller.Lookat();
        dashCnt = 0;
        audio.PlayOneShot(LightAtk);

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
                animator.SetInteger("Combo", 3);
            }
        }
    }
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        sword.Normalize();
        animator.SetInteger("Combo", 0);
    }
}

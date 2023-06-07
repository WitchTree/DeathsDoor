using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChargeStartState_R : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    public bool isCharge = false;
    public AudioSource audio;
    public AudioClip Charge;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        isCharge = true;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        animator.TryGetComponent(out audio);
        audio.PlayOneShot(Charge);
    }

    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        playercontroller.Lookat();
        if (playerInput.isStrong)
        {
            isCharge = false;
            animator.SetBool("ChargeStart_R", isCharge);
        }
    }

    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {

    }
}

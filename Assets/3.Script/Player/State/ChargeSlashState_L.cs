using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChargeSlashState_L : StateMachineBehaviour
{
    Transform playerTransform;
    PlayerController playercontroller;
    Sword sword;
    public AudioSource audio;
    public AudioClip StrongAtk;
    public float atkDash = 1.0f;
    int dashCnt = 0;
    public int dashLimit=0;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playercontroller);
        animator.TryGetComponent(out audio);
        sword.StrongSlash_L.SetActive(true);
        dashCnt = 0;
        audio.PlayOneShot(StrongAtk);


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
    }
}

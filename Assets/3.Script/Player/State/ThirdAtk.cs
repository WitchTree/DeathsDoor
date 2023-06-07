using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ThirdAtk : StateMachineBehaviour
{
    Sword sword;
    PlayerInput playerInput;
    PlayerController playercontroller;
    Transform playerTransform;
    public AudioSource audio;
    public AudioClip LightAtk;
    public float atkDash = 1.0f;
    int dashCnt = 0;
    public int dashLimit = 0;

    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        playerTransform = GameObject.FindGameObjectWithTag("Player").transform;
        animator.TryGetComponent(out audio);
        animator.TryGetComponent(out sword);
        animator.TryGetComponent(out playerInput);
        animator.TryGetComponent(out playercontroller);
        sword.swordBack.SetActive(false);
        playercontroller.Lookat();
        sword.swordRighthand.SetActive(true);
        sword.swordLefthand.SetActive(false);
        sword.LightSlash_L.SetActive(true);
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
    }
}

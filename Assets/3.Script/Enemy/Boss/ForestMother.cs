using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public enum FMState
{
    Slam, Hyper, Lift, Dead
}

public class ForestMother : MonoBehaviour
{
    //Player
    [SerializeField] Transform player;
    NavMeshAgent agent;

    //Animator
    Animator fMAni;
    float curAnimationTime;

    Vector3 slamRot = new Vector3(0f, -20f, 0f);
    float slamRotTime = 5f;
    bool isSlamPlayAgain = false;
    bool isSlamslowDone = false;
    bool isDead = false;
    bool isDeadLock = false;

    private void Awake()
    {
        fMAni = GetComponent<Animator>();
        agent = GetComponent<NavMeshAgent>();
    }

    private void Update() {
        if (isDead & !isDeadLock) {
            isDeadLock =  true;
            Dead();
        }
    }


    public void StartAttack() 
    {
        Debug.Log("시작");
        StartCoroutine(Slam_co());
    }

    IEnumerator Slam_co() 
    {
        fMAni.SetBool("Lift", false);
        fMAni.SetBool("Slam", true);
        
        yield return new WaitForSeconds(0.01f);
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        //slam_1
        isSlamPlayAgain = true;

        //Debug.Log(fMAni.GetCurrentAnimatorClipInfo(0)[0].clip.name);
        slamRotTime = 0f;
        while (slamRotTime < fMAni.GetCurrentAnimatorStateInfo(0).length) {
            transform.Rotate(slamRot * Time.deltaTime);
            slamRotTime += Time.deltaTime;
            yield return null;
        }
        fMAni.SetBool("playAgain", isSlamPlayAgain);

        //StartSpin
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        //slam_1
        slamRotTime = 0f;
        while (slamRotTime < fMAni.GetCurrentAnimatorStateInfo(0).length)
        {
            transform.Rotate(slamRot * Time.deltaTime);
            slamRotTime += Time.deltaTime;
            yield return null;
        }

        //Slam slow idle rotation
        slamRotTime = 0f;
        while (slamRotTime < 9f)
        {
            transform.Rotate(slamRot * Time.deltaTime * 2f);
            slamRotTime += Time.deltaTime;
            yield return null;
        }

        isSlamslowDone = true;
        fMAni.SetBool("isSlamslowDone", isSlamslowDone);

        fMAni.SetBool("Slam", false);
        fMAni.SetBool("Hyper", true);

        yield return new WaitForSeconds(1f);
        
        //다시 초기화
        isSlamslowDone = false;
        isSlamPlayAgain = false;

        StartCoroutine(Hyper_co());
    }

    IEnumerator Hyper_co() 
    {
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);


        //StartHyper
        Debug.Log(fMAni.GetCurrentAnimatorClipInfo(0)[0].clip.name);
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        //HyperSpin
        //NavMesh Player 따라가기..
        slamRotTime = 0f;
        while (slamRotTime < fMAni.GetCurrentAnimatorStateInfo(0).length * 10) 
        {
            agent.destination = player.position;
            Debug.Log(transform.localEulerAngles);
            agent.speed = 5f;

            slamRotTime += Time.deltaTime;
            yield return null;
        }
        fMAni.SetBool("isHyperSpin", false);
        agent.speed = 0f;

        //EndHyper

        fMAni.SetBool("Hyper", false);
        fMAni.SetBool("Lift", true);

        yield return new WaitForSeconds(1f);

        StartCoroutine(Lift_co());
    }

    IEnumerator Lift_co() 
    {
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        //StartLift
        Debug.Log(fMAni.GetCurrentAnimatorClipInfo(0)[0].clip.name);
        curAnimationTime = fMAni.GetCurrentAnimatorStateInfo(0).length;
        yield return new WaitForSeconds(curAnimationTime);

        //플레이어 공격 받을 때까지 startLift에 머물러 있어야 함

        /*
        int liftAttackCnt = 6;
        while (liftAttackCnt > 0) {
            if (isAttackRightLeg) {
                fMAni.SetBool("Lift_R", true);
            }
            else {
                fMAni.SetBool("Lift_L", true);
            }
            //각 다리 3번씩 공격 맞아야 함
        }
        */

        fMAni.SetBool("Lift_R", true);


        //Fall

        fMAni.SetBool("Lift", false);
        fMAni.SetBool("Slam", true);

        yield return new WaitForSeconds(1f);

        StartCoroutine(Slam_co());
    }

    public void Dead() 
    {
        isDead = true;
        StopCoroutine(Slam_co());
        StartCoroutine(Dead_co());
    }

    IEnumerator Dead_co() {
        fMAni.SetTrigger("Dead");
        yield return new WaitForSeconds(2.7f);
        gameObject.SetActive(false);
    }
}

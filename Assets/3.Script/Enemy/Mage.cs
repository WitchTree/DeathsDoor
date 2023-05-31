using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Mage : Enemy
{
    //Move
    Vector3 destination;
    [SerializeField] Transform player;
    [SerializeField] NavMeshAgent agent;

    //Teleport
    //float distMax = 10f; 
    float teleportDist = 6f;
    bool isTeleporting = false;

    //Animator
    Animator mageAni;

    //Attack
    float attackBetTime = 5f;
    float attackTime = 4f;
    float shootTime = 3f;
    bool isAttacked = false;
    Vector3 playerPos;

    bool isTeleportLock = false;
    bool isAttackLock = false;

    void Start()
    {
        SetMage();
    }

    void Update()
    {
        if (isDead)
        {
            mageAni.SetTrigger("Death");
            gameObject.SetActive(false);
        }
        
    }

    void SetMage()
    {
        this.hp = 7;
        this.maxHp = 7;
        this.spirit = 2;

        mageAni = GetComponent<Animator>();
    }

    //Mage의 Trigger는 원으로 안에 들어오면 어그로 끌리고 벗어나면 플레이어 근처로 텔레포트함
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isAttracted = true;
            StopCoroutine(Teleport_co());
            StartCoroutine(LookPlayer_co());
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.transform.tag.Equals("player"))
        {
            Debug.Log("Player와 충돌");
            hp -= 1;
            isAttacked = true;
            //StartCoroutine(Teleport_co());
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && !isTeleportLock)
        {
            //shooting하는 중간에 나가면 실행 안됨 ㅠ
            StartCoroutine(Teleport_co());
        }
    }

    IEnumerator LookPlayer_co() 
    {
        yield return new WaitForSeconds(0.1f);
        while(!isDead)
        {
            if (!isAttacking && !isTeleporting)
            {
                Quaternion targetRotation = Quaternion.LookRotation(player.position - transform.position);
                transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 180f * Time.deltaTime);
            }
            yield return null;
        }
    }

    void Attack()
    {
        //Mage -> shoot
        if (attackTime >= attackBetTime) //공격 가능하면
        {
            isAttacking = true;
            playerPos = player.position;
            StartCoroutine(Shoot_co());

            //isAttacking == true 이고 collider 충돌하면 player hp 닳게 만들기
        }
        attackTime += Time.deltaTime;
    }

    IEnumerator Shoot_co()
    {
        mageAni.SetBool("isShooting", isAttacking);
        float time = 0f;
        while (time < shootTime)
        {
            time += Time.deltaTime;
            yield return null;
        }
        isAttacking = false;
        mageAni.SetBool("isShooting", isAttacking);
        attackTime = 0f;
    }

    IEnumerator Teleport_co()
    {
        isTeleportLock = true;
        if (isAttacked)
        {
            mageAni.SetBool("isAttacked", isAttacked);
            yield return new WaitForSeconds(3f);
        }
        if (!isAttacking)
        {
            isTeleporting = true;
            yield return new WaitForSeconds(3f);

            mageAni.SetBool("isTeleporting", isTeleporting);
            yield return new WaitForSeconds(2.35f);

            transform.position = RandomNavmeshLocation(teleportDist); //랜덤한 위치에 생성
            transform.LookAt(player);
            yield return null;

            isTeleporting = false;
            mageAni.SetBool("isTeleporting", isTeleporting);
            yield return new WaitForSeconds(2f);

            isAttacked = false;
        }
        isTeleportLock = false;
    }

    //NavMesh 내 랜덤한 위치 생성
    Vector3 RandomNavmeshLocation(float radius)
    {
        Vector3 randomDirection = Random.insideUnitSphere * radius;
        randomDirection += player.position;
        NavMeshHit hit;
        Vector3 finalPosition = Vector3.zero;
        if (NavMesh.SamplePosition(randomDirection, out hit, radius, 1))
        {
            finalPosition = hit.position;
        }
        return finalPosition;
    }
}

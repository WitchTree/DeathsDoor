using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Mage : Enemy
{
    //Move
    Vector3 destination;
    [SerializeField] Transform player, patrol;
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
        if (!isAttracted)
        {
            destination = patrol.position;
            agent.destination = destination;
            agent.speed = 0.1f;
        }
        else if (!isAttacking && !isTeleporting) //������ �ƴ� ��
        {
            agent.speed = 0f;
            Attack();
        }
        else
        {
            agent.speed = 0f;
        }

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

    //Mage�� Trigger�� ������ �ȿ� ������ ��׷� ������ ����� �÷��̾� ��ó�� �ڷ���Ʈ��
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
            Debug.Log("Player�� �浹");
            hp -= 1;
            isAttacked = true;
            //StartCoroutine(Teleport_co());
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && !isTeleportLock)
        {
            //shooting�ϴ� �߰��� ������ ���� �ȵ� ��
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
        if (attackTime >= attackBetTime) //���� �����ϸ�
        {
            isAttacking = true;
            playerPos = player.position;
            StartCoroutine(Shoot_co());
            
            //isAttacking == true �̰� collider �浹�ϸ� player hp ��� �����
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

            transform.position = RandomNavmeshLocation(teleportDist); //������ ��ġ�� ����
            transform.LookAt(player);
            yield return null;

            isTeleporting = false;
            mageAni.SetBool("isTeleporting", isTeleporting);
            yield return new WaitForSeconds(2f);

            isAttacked = false;
        }
        isTeleportLock = false;
    }

    //NavMesh �� ������ ��ġ ����
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

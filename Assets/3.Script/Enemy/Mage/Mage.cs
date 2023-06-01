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
    public float teleportDist = 6f;
    public bool isTeleporting = false;

    //Animator
    Animator mageAni;
    MageOnDamage mageOnDamage;

    //Attack
    float attackBetTime = 5f;
    float attackTime = 4f;
    float shootTime = 3f;
    bool isAttacked = false;
    Vector3 playerPos;

    //bullet
    [Header("Bullet")]
    [SerializeField] Transform bulletSpawnPoint;
    [SerializeField] GameObject bulletPrefab;

    bool isTeleportLock = false;
    bool isAttackLock = false;

    //DMG effect
    SkinnedMeshRenderer[] skinnedMeshRenderer = new SkinnedMeshRenderer[3];

    void Start()
    {
        SetMage();
    }

    private void Update()
    {
        Attack();
        LookPlayer();
    }

    void SetMage()
    {
        this.hp = 7;
        this.maxHp = 7;
        this.spirit = 2;

        mageAni = GetComponent<Animator>();
        mageOnDamage = GetComponentInChildren<MageOnDamage>();
        skinnedMeshRenderer = GetComponentsInChildren<SkinnedMeshRenderer>();
        
    }

    public void Damaged()
    {
        hp--;
        if (hp <= 0)
        {
            isDead = true;
            mageAni.SetTrigger("Death");
        }
    }

    public void Death()
    {
        mageOnDamage.ChangeMaterialDead();
    }

    //Mage의 Trigger는 원으로 안에 들어오면 어그로 끌리고 벗어나면 플레이어 근처로 텔레포트함
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            isAttracted = true;
            Attack();
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") && !isTeleportLock)
        {
            isTeleporting = true;
            mageAni.SetBool("isTeleporting", isTeleporting);
            

        }
    }

    void LookPlayer() 
    {
        if (!isAttacking && !isTeleporting)
        {
            Quaternion targetRotation = Quaternion.LookRotation(player.position - transform.position);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 180f * Time.deltaTime);
        }
    }

    void Attack()
    {
        //Mage -> shoot
        if (attackTime >= attackBetTime && !isAttacking && !isTeleporting)  //공격 가능하면
        {
            isAttacking = true;
            playerPos = player.position;
            mageAni.SetBool("isShooting", isAttacking);
        }
        attackTime += Time.deltaTime;
    }

    public void Shooting()
    {
        //Bullet 날리기
        GameObject bullet = Instantiate(bulletPrefab, bulletSpawnPoint.position, Quaternion.identity);
        bullet.transform.SetParent(transform);

        attackTime = 0f;
        isAttacking = false;
    }
    

    //NavMesh 내 랜덤한 위치 생성
    public Vector3 RandomNavmeshLocation(float radius)
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

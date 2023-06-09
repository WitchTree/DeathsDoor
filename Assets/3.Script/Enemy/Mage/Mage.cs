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
    float attackBetTime = 8f;
    float attackTime = 4f;
    Vector3 playerPos;

    //bullet
    [Header("Bullet")]
    [SerializeField] Transform bulletSpawnPoint;
    [SerializeField] GameObject bulletPrefab;

    [Header("Spirit")]
    [SerializeField] GameObject spiritPrefab;

    bool isTeleportLock = false;

    //Audio
    [Header("Audio")]
    AudioSource audio;
    [SerializeField] AudioClip takeDamage;
    [SerializeField] AudioClip shoot;
    [SerializeField] AudioClip disappear;

    //Player
    PlayerState playerState;

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
        this.isDead = false;

        mageAni = GetComponent<Animator>();
        mageOnDamage = GetComponentInChildren<MageOnDamage>();
        audio = GetComponent<AudioSource>();
        playerState = FindObjectOfType<PlayerState>();
    }

    public void Damaged()
    {
        hp--;
        audio.PlayOneShot(takeDamage);
        
        Death();
    }

    public void Death()
    {
        if (hp <= 0f)
        {
            isDead = true;
            playerState.getSpirit += spirit;
            mageAni.SetTrigger("Death");
        }
    }

    public void DeathMaterial()
    {
        mageOnDamage.ChangeMaterialDead();

        StartCoroutine(CreateSpirit_co());
    }

    IEnumerator CreateSpirit_co()
    {
        yield return new WaitForSeconds(1f);
        GameObject spirit = Instantiate(spiritPrefab, transform.position, Quaternion.identity);
    }

    /*
    //If player comes inside the trigger, mage attracted.
    //outside the trigger, mage teleport.
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
    */

    void LookPlayer() 
    {
        if (!isAttacking && !isTeleporting)
        {
            Quaternion targetRotation = Quaternion.LookRotation(player.position);
            //Quaternion targetRotation = Quaternion.LookRotation(player.position - transform.position);
            transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 180f * Time.deltaTime);
        }
    }

    void Teleport()
    {
        isTeleporting = true;
        mageAni.SetBool("isTeleporting", isTeleporting);
    }

    void Attack()
    {
        //Mage -> shoot
        if (attackTime >= attackBetTime && !isAttacking && !isTeleporting && !isDead)
        {
            isAttacking = true;
            playerPos = player.position;
            mageAni.SetBool("isShooting", isAttacking);
        }
        attackTime += Time.deltaTime;
    }

    public void Shooting()
    {
        //Shoot bullet
        GameObject bullet = Instantiate(bulletPrefab, bulletSpawnPoint.position, Quaternion.identity);
        bullet.transform.SetParent(transform);

        attackTime = 0f;
        isAttacking = false;
    }
    

    //Respawn at random position in NavMesh
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

    public void PlayTeleportAudio()
    {
        audio.PlayOneShot(disappear);
    }

    public void HitPot(Vector3 position)
    {
        hp -= maxHp;
        Death();
    }
}

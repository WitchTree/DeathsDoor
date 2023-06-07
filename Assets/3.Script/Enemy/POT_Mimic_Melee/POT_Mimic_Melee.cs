using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_Mimic_Melee : Enemy
{
    Animator potAni;

    //smashed
    [SerializeField] Rigidbody[] smashed = new Rigidbody[14];
    [SerializeField] GameObject[] bodyParts = new GameObject[3];

    [Header("Collider")]
    [SerializeField] Collider spinCollider;
    [SerializeField] Collider bodyCollider;

    //open spike door
    [Header("Spike Door")]
    [SerializeField] SpikeDoor spikeDoor;

    [Header("Spirit")]
    [SerializeField] GameObject spiritPrefab;

    [Header("Audio")]
    AudioSource audio;
    [SerializeField] AudioClip[] audioClips = new AudioClip[2];

    bool isMove = false;

    void Start()
    {
        SetPot();
    }

    void SetPot()
    {
        this.hp = 3;
        this.maxHp = 3;
        this.spirit = 1;

        potAni = GetComponent<Animator>();
        audio = GetComponent<AudioSource>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (!isMove)
        {
            if (other.CompareTag("Skill") || other.CompareTag("Weapon")) //Awake from first attack
            {
                //Start moving
                audio.PlayOneShot(audioClips[0]);
                StartMove();
            }
        }
        else 
        {
            if (other.CompareTag("Skill") || other.CompareTag("Weapon")) //After first attack
            {
                //pot hp
                hp -= 1f;
                audio.PlayOneShot(audioClips[0]);

                switch (hp)
                {
                    case 2:
                        StopMove();
                        break;
                    case 1:
                        Drop();
                        break;
                    case 0:
                        Dead();
                        break;
                }
            }
        }
    }

    public void StartMove()
    {
        isMove = true;

        //move up to use rigidbody 
        transform.localPosition += new Vector3(0f, 0.001f, 0f);
        //Outside of body disactive
        bodyParts[0].SetActive(false);
        bodyParts[1].SetActive(false);

        //Tap
        smashed[13].AddForce(Vector3.up * 350f);

        potAni.SetBool("isAttacked", true);
        //Rotation
        potAni.SetBool("Spin", true);
        StartCoroutine(SetTap_co());
    }

    public void StartSpin()
    {
        spinCollider.enabled = true;
        audio.Stop();
        audio.clip = audioClips[1];
        audio.volume = 0.5f;
        audio.loop = true;
        audio.Play();
    }

    public void EndSpin()
    {
        spinCollider.enabled = false;
        audio.Stop();
        audio.loop = false;
    }

    public void StopMove()
    {
        //Stop pot spin
        potAni.SetBool("Spin", false);

        //stop
        StopCoroutine(SetTap_co());
    }

    public void Drop()
    {
        //Drop
        potAni.SetTrigger("Drop");

        //Tap disactive
        smashed[13].gameObject.SetActive(false);

        //Break
        for (int i = 0; i < smashed.Length - 1; i++)
        {
            smashed[i].isKinematic = false;
        }
    }

    public void Dead()
    {
        isDead = true;

        bodyParts[2].SetActive(false);

        bodyCollider.enabled = false;

        //Add spirit to player
        Instantiate(spiritPrefab, transform.position, Quaternion.identity);

        StartCoroutine(SpikeDoorUnlock_co());
    }

    IEnumerator SetTap_co()
    {
        float time = 0f;
        while (time < 6f)
        {

            if (time > 1f && smashed[13].transform.localPosition.y < 0.01791f)
            {
                smashed[13].transform.localPosition = new Vector3(-0.00001f, 0.0179f, -0.0012f);
            }

            time += Time.deltaTime;
            yield return null;
        }
        bodyCollider.enabled = true;
        smashed[13].isKinematic = true;
    }

    IEnumerator SpikeDoorUnlock_co()
    {
        //Spike door unlock
        spikeDoor.isUnlock = true;

        //Add unlock SpikeDoor effect
        yield return null;
    }
}

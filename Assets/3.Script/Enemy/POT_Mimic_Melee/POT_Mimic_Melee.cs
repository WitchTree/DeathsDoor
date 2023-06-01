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
    }

    void OnTriggerEnter(Collider other) 
    {
        
        if (other.CompareTag("Skill") && !isMove) //첫 공격 맞고 깨어나기
        {
            //무기에 맞으면 움직이기 시작
            StartMove();
        }
        else if (other.CompareTag("Skill")) // 첫 공격 이후 데미지 입기
        {
            //항이리 hp 감소
            hp -= 1f;
            Debug.Log("Pot hp:" + hp);
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

    public void StartMove()
    {
        isMove = true;

        //rigidbody 사용을 위해 약간 띄우기
        transform.localPosition += new Vector3(0f, 0.001f, 0f);
        //겉 body 비활성화
        bodyParts[0].SetActive(false);
        bodyParts[1].SetActive(false);

        //tap 위로 띄우기
        smashed[13].AddForce(Vector3.up * 350f);

        potAni.SetBool("isAttacked", true);
        //회전
        potAni.SetBool("Spin", true);
        StartCoroutine(SetTap_co());
    }

    public void StartSpin()
    {
        spinCollider.enabled = true;
    }

    public void EndSpin()
    {
        spinCollider.enabled = false;
    }

    public void StopMove()
    {
        //pot 회전 멈추기
        potAni.SetBool("Spin", false);

        //멈추기
        StopCoroutine(SetTap_co());
    }

    public void Drop()
    {
        //항아리의 하체 조각 떨어지고 아래로 내려 앉기
        potAni.SetTrigger("Drop");

        //tap 비활성화
        smashed[13].gameObject.SetActive(false);

        //깨지기
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

        //플레이어에게 spirit 추가 
        GameObject spirit = Instantiate(spiritPrefab, transform.position, Quaternion.identity);

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
        //spike door 잠금 해제
        spikeDoor.isUnlock = true;

        //spikeDoor 잠금 해제 이펙트 추가
        yield return null;
    }
}

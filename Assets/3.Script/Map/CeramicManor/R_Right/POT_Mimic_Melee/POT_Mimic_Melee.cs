using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_Mimic_Melee : Enemy
{
    [SerializeField] SpikeDoor spikeDoor;

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
    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Weapon") && !isMove) //첫 공격 맞고 깨어나기
        {   
            //무기에 맞으면 움직이기 시작
            isMove = true;
            StartCoroutine(StartMove_co());
        }
        else if (other.CompareTag("Weapon")) // 첫 공격 이후 데미지 입기
        {
            //항이리 hp 감소
            hp -= 1;

            switch (hp) 
            {
                case 2:
                    //pot 회전 멈추기
                    StopCoroutine(StartMove_co());
                    break;
                case 1:
                    //항아리의 하체 조각 떨어지고 아래로 내려 앉기
                    break;
                case 0:
                    isDead = true;
                    //플레이어에게 spirit 추가 
                    StartCoroutine(SpikeDoorUnlock_co());
                    break;
                
            }
        }
    }

    IEnumerator StartMove_co() 
    {
        while (hp.Equals(maxHp)) 
        {
            //회전하며 플레이어에게 다가가기
            yield return null;
        }
    }

    IEnumerator SpikeDoorUnlock_co() 
    {
        //spike door 잠금 해제
        spikeDoor.isUnlock = true;

        //spikeDoor 잠금 해제 이펙트 추가
        yield return null;
    }
}

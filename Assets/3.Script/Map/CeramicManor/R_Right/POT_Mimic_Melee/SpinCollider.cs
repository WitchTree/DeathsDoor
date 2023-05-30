using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpinCollider : MonoBehaviour
{
    //플레이어 hp 감소

    void Start()
    {
        //플레이어 hp가 있는 컴포넌트 찾기
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))//플레이어와 충돌하면 플레이어에 데미지 입히기
        {

        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyBatControl : MonoBehaviour
{
    float attack;
    float hp;
    int sprit;

    bool isAttracted = false;
    float attractRadius = 4f;
    float moveRadius = 6f;
    float followSpeed = 2f;

    Vector3 targetPos = Vector3.zero;

    [SerializeField] Vector3 center;

    PlayerController playerController;

    private void Start()
    {
        playerController = FindObjectOfType<PlayerController>();
        center = transform.position;
    }

    private void Update()
    {
        DetectPlayer();

        Move();
    
            
    }

    void DetectPlayer()
    {
        Vector3 offsetPlayer = transform.position - playerController.gameObject.transform.position;
        if (offsetPlayer.sqrMagnitude < attractRadius)
        {
            Debug.Log("Find Player");
            isAttracted = true;
        }
    }

    void Move()
    {
        //�̵� ������ ����� �ٽ� ���ư���
        Vector3 offsetCenter = transform.position - center;
        
        if (isAttracted && offsetCenter.sqrMagnitude < moveRadius)
        {
            targetPos = playerController.gameObject.transform.position;
        }
        else
        {
            targetPos = center;
            isAttracted = false;
        }

        //Ÿ���� ���� �����̱�
        transform.position = Vector3.MoveTowards(transform.position, targetPos, Time.deltaTime * followSpeed);
        //���� �ٲٱ�
        Quaternion targetRotation = Quaternion.LookRotation(targetPos - transform.position);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, 180f * Time.deltaTime);
    }
}

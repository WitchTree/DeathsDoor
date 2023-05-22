using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// �� �� ���� �ɰ� ���� �� ����
public class Heal_Plant : MonoBehaviour
{
    public Player_State playerState;
    private bool isSeed = false;
    private bool isCheck = false;
    private int seedCount = 1;

    private Animator ani;

    private void Awake()
    {
        playerState = FindObjectOfType<Player_State>();
    }
    void Start()
    {
        ani = GetComponent<Animator>();
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && playerState.seed > 0 && !isCheck)//ȭ�� ���� �ȿ� �ְ� �÷��̾ ������ �ְ� ������ ���� ���� ���ٸ�
        {
            isSeed = true;//������ ����);
        }

        else if (other.CompareTag("Player") && isCheck) //������ �ɾ��� �ִٸ�
        {

            Invoke("IsSeed_Invoke", 3f);
            //isSeed = false; // ���� ���� �� �� ����

        }
    }
    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.E) && isSeed && seedCount == 1)//���� �ɱ�
        {
            playerState.seed--;//������ �����
            seedCount--;

            isCheck = true;//������ ����
            ani.SetBool("Seed", isSeed);
            //ani.SetTrigger("SeedTest");
            //isCheck = true;
            Debug.Log("���� �ɾ���");
            Debug.Log(playerState.seed);
        }
        else if (Input.GetKeyDown(KeyCode.E) && !isSeed && isCheck)//���� �Ա�
        {
            playerState.life += 3;
            if (playerState.life > 4)
            {
                playerState.life = 4;
            }
            ani.SetBool("Seed", isSeed);

            Debug.Log("���� ���� �� ����");
        }
    }

    //�ִϸ��̼� ���� �� �Է��� �ޱ� ���ؼ� �ۼ�
    private void IsSeed_Invoke()
    {
        isSeed = false; // ���� ���� �� �� ����    
    }


}

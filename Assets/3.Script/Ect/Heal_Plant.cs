using System.Collections;
using System.Collections.Generic;
using UnityEngine;


// �� �� ���� �ɰ� ���� �� ����
public class Heal_Plant : MonoBehaviour
{
    public Player_State player;
    private bool isSeed = false;
    private bool isCheck = false;
    private int seedCount = 1;

    private Animator ani;

    void Start()
    {
        ani = GetComponent<Animator>();
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && player.seed > 0 && !isCheck)//ȭ�� ���� �ȿ� �ְ� �÷��̾ ������ �ְ� ������ ���� ���� ���ٸ�
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
            player.seed--;//������ �����
            seedCount--;

            isCheck = true;//������ ����
            ani.SetBool("Seed", isSeed);
            ani.SetTrigger("SeedTest");
            //isCheck = true;
            Debug.Log("���� �ɾ���");
            Debug.Log( player.seed);
        }
        else if (Input.GetKeyDown(KeyCode.E) && !isSeed && isCheck)//���� �Ա�
        {
            player.life += 3;
            if (player.life > 4)
            {
                player.life = 4;
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

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerState : MonoBehaviour
{
    public int skill = 4; // ��ų ��
    public int life = 4;
    public int seed = 0;//������ 
    public int getSpirit = 0;//ȹ���� ��ȥ ��

    public PlayerInput playerInput;
    public Bat bat;

    private Animator ani;
    public bool isSuffer = false;

    private void Awake()
    {
        playerInput = FindObjectOfType<PlayerInput>();
        bat = FindObjectOfType<Bat>();
    }

    private void Start()
    {
        ani = GetComponent<Animator>();
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy") && !isSuffer && bat.isAttacking)
        {
            life--;
            Debug.Log("���");
            Debug.Log(life);

            if (life <= 0)
            {
                ani.SetTrigger("Death");
            }
            else
            {
                StartCoroutine("Suffer_co");
            }
        }
    }

    private IEnumerator Suffer_co()//�̵� �Է� ���� �ʰ� �� ���� �ٵ� ��Ȯ�� ���� �ڵ带 ����� �� ���� �ϴ� ������ ��ũ��Ʈ���� �����ϰ� ���߿� ��� ã���� ����
    {
        ani.SetTrigger("Suffer");
        isSuffer = true;


        ani.SetBool("Suffer", isSuffer);
        yield return new WaitForSeconds(1.5f);

        isSuffer = false;
        ani.SetBool("Suffer", isSuffer);
    }
}

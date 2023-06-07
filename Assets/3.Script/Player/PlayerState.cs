using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerState : MonoBehaviour
{
     public int skill = 4; // Skill count has to be changed !!
    [HideInInspector] public int life = 4;
    [HideInInspector] public int seed = 0;
    [HideInInspector] public int getSpirit = 0;

    [HideInInspector] public PlayerInput playerInput;

    [HideInInspector] private Animator ani;
    [HideInInspector] public bool isSuffer = false;

    //Skill Damage
    [HideInInspector] public float skillDamage_1 = 1f;
    [HideInInspector] public float skillDamage_2 = 1.5f;

    [HideInInspector] public float skillDelay = 0.7f;

    private void Awake()
    {
        playerInput = FindObjectOfType<PlayerInput>();
    }

    private void Start()
    {
        ani = GetComponent<Animator>();
    }


    //private void OnTriggerEnter(Collider other)
    //{
    //    if (other.CompareTag("Enemy") && !isSuffer)
    //    {
    //        //life--;
    //        Debug.Log("���");
    //        Debug.Log(life);

    //        if (life <= 0)
    //        {
    //            ani.SetTrigger("Death");
    //        }
    //        else
    //        {
    //            StartCoroutine("Suffer_co");
    //        }
    //    }
    //}

    //private IEnumerator Suffer_co()//�̵� �Է� ���� �ʰ� �� ���� �ٵ� ��Ȯ�� ���� �ڵ带 ����� �� ���� �ϴ� ������ ��ũ��Ʈ���� �����ϰ� ���߿� ��� ã���� ����
    //{
    //    ani.SetTrigger("Suffer");
    //    isSuffer = true;


    //    ani.SetBool("Suffer", isSuffer);
    //    yield return new WaitForSeconds(1.5f);

    //    isSuffer = false;
    //    ani.SetBool("Suffer", isSuffer);
    //}

    public void SkillCountUp()
    {
        skill++;
        if (skill >= 4)
        {
            skill = 4;
        }
        
    }
}

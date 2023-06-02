using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerState : MonoBehaviour
{
    [HideInInspector] public int skill = 100; // Skill count has to be changed !!
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


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy") && !isSuffer)
        {
            life--;
            Debug.Log("목숨");
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

    private IEnumerator Suffer_co()//이동 입력 받지 않게 할 예정 근데 정확히 무슨 코드를 써야할 지 몰라서 일단 움직임 스크립트에서 제한하고 나중에 방법 찾으면 수정
    {
        ani.SetTrigger("Suffer");
        isSuffer = true;


        ani.SetBool("Suffer", isSuffer);
        yield return new WaitForSeconds(1.5f);

        isSuffer = false;
        ani.SetBool("Suffer", isSuffer);
    }
}

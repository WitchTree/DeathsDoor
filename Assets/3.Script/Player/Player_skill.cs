using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_skill : MonoBehaviour
{
    PlayerController playerController;
    public PlayerState playerState;
    public PlayerInput playerInput;
    private Animator ani;

    public GameObject[] skill;
    GameObject preSkill;

    public Transform weaponPivot; //�ٸ� Ŭ�������� �ҷ��� �� ����
    public Transform weaponPivot_Fireball;//��ġ
    public GameObject arrow_prefab;//�������� ȭ��
    public GameObject fireball_prefab;//�������� ���̾
    public GameObject setparent_player;//setparent �� �÷��̾� �ޱ�
    public GameObject arrowhead;

    public GameObject arrow;
    public GameObject fireball;

    public bool isSkill = false;

    int skillIndex = 0;//�⺻ ��ų�� Ȱ

    public float skillDamage;

    void Start()
    {
        ani = GetComponent<Animator>();
        playerInput = GetComponent<PlayerInput>();
        playerState = GetComponent<PlayerState>();
        playerController = GetComponent<PlayerController>();
    }
    private void Update()
    {
        SkillChange();
        SkillDamage();
        Skill();        
    }

    public void SkillChange()
    {
        if (playerInput.skill1 && !isSkill)
        {
            skillIndex = 0;
            skillDamage = playerState.skillDamage_1;

        }
        if (playerInput.skill2 && !isSkill)
        {
            skillIndex = 1;
            skillDamage = playerState.skillDamage_2;
        }
    }

    public void SkillDamage()
    {
        if (skillIndex == 0)
        {
            skillDamage = playerState.skillDamage_1;

        }
        if (skillIndex == 1)
        {
            skillDamage = playerState.skillDamage_2;
        }
    }



    public void Skill()
    {
        if (playerInput.isSkill_start && !isSkill && !playerController.isRoll)
        {
            preSkill = skill[skillIndex];
            preSkill.SetActive(true);

            isSkill = true;

            //Debug.Log(skillDamage);

            if (skillIndex == 0)
            {
                ani.SetBool("Bow", isSkill);
                if (playerState.skill <= 0 )
                {
                    arrowhead.SetActive(false);
                }
            }
            if (skillIndex == 1)
            {
                ani.SetBool("Fireball", isSkill);
            }

            StartCoroutine("Wait_co");
        }

        if (playerInput.isSkill_end && isSkill )
        {
            preSkill.SetActive(false);
            isSkill = false;
            if ( playerState.skill > 0)
            {
                
                //Debug.Log("���� ��ų" + playerState.skill);
            }

            if (skillIndex == 0)
            {
                ani.SetBool("Bow", isSkill);
            }
            if (skillIndex == 1)
            {
                ani.SetBool("Fireball", isSkill);
            }
            
            StopCoroutine("Wait_co");
        }
    }
 

    private IEnumerator Wait_co()
    {
        yield return new WaitForSeconds(playerState.skillDelay);
        if (playerState.skill > 0)
        {
            
            if (skillIndex == 0)
            {
                arrow = Instantiate(arrow_prefab, weaponPivot.position, weaponPivot.rotation);
                arrow.transform.SetParent(setparent_player.transform);
            }
            if (skillIndex == 1)
            {
                fireball = Instantiate(fireball_prefab, weaponPivot_Fireball.position, weaponPivot_Fireball.rotation);
                fireball.transform.SetParent(setparent_player.transform);
            }
        }
        playerState.skill--;
        FindObjectOfType<HudUIManagement>().PlayerSkillFillcondition();

    }
}

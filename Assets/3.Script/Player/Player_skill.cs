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

    public Transform weaponPivot; //다른 클래스에서 불러올 수 있음
    public Transform weaponPivot_Fireball;//위치
    public GameObject arrow_prefab;//프리팹한 화살
    public GameObject fireball_prefab;//프리팹한 파이어볼
    public GameObject setparent_player;//setparent 즉 플레이어 받기
    public GameObject arrowhead;

    public GameObject arrow;
    public GameObject fireball;

    public bool isSkill = false;

    int skillIndex = 0;//기본 스킬은 활

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
                
                //Debug.Log("남은 스킬" + playerState.skill);
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

    }
}

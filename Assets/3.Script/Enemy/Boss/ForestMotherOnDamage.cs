using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMotherOnDamage : MonoBehaviour
{
    Player_skill playerSkill;
    PlayerState playerState;
    ForestMother forestMother;
    Animator fMAni;

    bool isLiftAttacked = false;
    [SerializeField] bool isVineFrontL = false;
    [SerializeField] bool isVineFrontR = false;

    private void Start()
    {
        playerSkill = FindObjectOfType<Player_skill>();
        playerState = FindObjectOfType<PlayerState>();
        forestMother = FindObjectOfType<ForestMother>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill") || other.CompareTag("Weapon"))
        {
            Destroy(other.gameObject);
            forestMother.hp -= playerSkill.skillDamage;
            forestMother.PlayHitSound();

            if (forestMother.hp <= 0)
            {
                forestMother.Dead();
            }
            else
            {
                //Damage Material Change
                forestMother.DamagedEffect();
            }

            if (other.CompareTag("Weapon"))
            {
                //player skill count up
                playerState.SkillCountUp();
            }

            VineAttacked();
            
        }
    }

    void VineAttacked()
    {
        //vine damaged and set animation
        if (isLiftAttacked)
        {
            if (isVineFrontL)
            {
                forestMother.countAttacked[0]++;
            }
            else if (isVineFrontR)
            {
                forestMother.countAttacked[1]++;
            }

            bool liftAttackFinish = CountVineAttacked();
            if (liftAttackFinish)
            {
                forestMother.Fall();
            }    
        }
        else
        {
            if (isVineFrontL)
            {
                isLiftAttacked = true;
                forestMother.countAttacked[0]++;
                forestMother.DamagedVineFrontL();
            }
            else if (isVineFrontR)
            {
                isLiftAttacked = true;
                forestMother.countAttacked[1]++;
                forestMother.DamagedVineFrontR();
            }
        }
    }

    bool CountVineAttacked()
    {
        int sum = forestMother.countAttacked[0] + forestMother.countAttacked[1];

        if (sum.Equals(5))
        {
            return true;
        }
        return false;
    }
}

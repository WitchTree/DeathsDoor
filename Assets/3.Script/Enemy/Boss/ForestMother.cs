using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMother : MonoBehaviour
{
    //forest Mother info
    bool isDead = false;

    //Component
    Animator fMAni;

    [Header("Collider")]
    //Leg Collider
    [SerializeField] Collider[] vineColliders = new Collider[4];
    [SerializeField] Collider[] liftVineColliders = new Collider[2];

    //Hyper Collider
    [SerializeField] Collider hyperCollider;

    [Header("Skill")]
    //Slam
    public int slamPlayCount = 0;
    public float slamSlowTime = 0f;
    public Vector3 slamRot = new Vector3(0f, -20f, 0f);

    //Hyper
    public float hyperSpinTime = 0f;

    //Lift
    public bool isAttackedR = false;
    public bool isAttackedL = false;

    void Awake() 
    {
        fMAni = GetComponent<Animator>();
    }

    private void Update()
    {
        if (isDead)
        {
            Dead();
        }
    }

    public void Attack() 
    {
        fMAni.SetBool("Slam", true);
    }

    public void Dead()
    {
        fMAni.SetTrigger("Dead");
    }

    public void EnableCollider1()
    {
        vineColliders[0].enabled = true;
        vineColliders[3].enabled = true;
    }

    public void EnableCollider2()
    {
        vineColliders[1].enabled = true;
        vineColliders[2].enabled = true;
    }

    public void DisableCollider1()
    {
        vineColliders[0].enabled = false;
        vineColliders[3].enabled = false;
    }

    public void DisableCollider2()
    {
        vineColliders[1].enabled = false;
        vineColliders[2].enabled = false;
    }

    public void LiftEnableCollider()
    {
        liftVineColliders[0].enabled = true;
        liftVineColliders[1].enabled = true;
    }

    public void LiftDisableCollider()
    {
        liftVineColliders[0].enabled = false;
        liftVineColliders[1].enabled = false;
    }

    public void EnableHyperCollider()
    {
        hyperCollider.enabled = true;
    }
    
    public void DisableHyperCollider()
    {
        hyperCollider.enabled = false;
    }

}

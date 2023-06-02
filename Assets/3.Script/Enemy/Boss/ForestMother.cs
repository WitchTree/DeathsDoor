using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMother : Enemy
{
    //Component
    Animator fMAni;

    [Header("Collider")]
    //Leg Collider
    [SerializeField] Collider[] vineColliders = new Collider[4];
    [SerializeField] Collider[] liftVineColliders = new Collider[2];
    //Body Collider
    [SerializeField] Collider bodyColliders;
    //Hyper Collider
    [SerializeField] Collider hyperCollider;

    //Damage and dissolve
    [Header("Skin Mesh")]
    [SerializeField] SkinnedMeshRenderer[] skinnedMeshRenderers;
    [SerializeField] MeshRenderer meshRenderer;
    [SerializeField] Material[] dmgMaterial;
    Material[][] currMaterials = new Material[19][];
    Material currMaterial;

    float dissolveRate = 0.0125f;
    float refreshRate = 0.025f;

    [Header("Spirit")]
    [SerializeField] GameObject spiritPrefab;

    //Slam
    [HideInInspector] public int slamPlayCount = 0;
    [HideInInspector] public float slamSlowTime = 0f;
    [HideInInspector] public Vector3 slamRot = new Vector3(0f, -20f, 0f);

    //Hyper
    [HideInInspector] public float hyperSpinTime = 0f;

    //Lift
    [HideInInspector] public bool isAttackedR = false;
    [HideInInspector] public bool isAttackedL = false;

    //lift vine attack count
    [HideInInspector] public int[] countAttacked = new int[2];

    


    void Start()
    {
        fMAni = GetComponent<Animator>();

        //skinnedMeshRenderer save
        for (int i = 0; i < skinnedMeshRenderers.Length; i++)
        {
            currMaterials[i] = skinnedMeshRenderers[i].materials;
        }
        currMaterial = meshRenderer.materials[0];
        SetFM();
    }

    void SetFM()
    {
        this.hp = 20f;
        this.maxHp = 20f;
        this.spirit = 100;
    }

    public void Attack()
    {
        fMAni.SetBool("Slam", true);
    }

    public void Dead()
    {
        isDead = true;
        fMAni.SetTrigger("Dead");
        StartCoroutine(CreateSpirit_co());
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

    public void DamagedVineFrontL()
    {
        fMAni.SetBool("isAttackedL", true);
    }

    public void DamagedVineFrontR()
    {
        fMAni.SetBool("isAttackedR", true);
    }

    public void LiftStart()
    {
        bodyColliders.enabled = false;
        InitializeCount();
    }

    public void InitializeCount()
    {
        countAttacked[0] = 0;
        countAttacked[1] = 0;
    }

    public void Fall()
    {
        fMAni.SetBool("isFall", true);
        fMAni.SetBool("isAttackedL", false);
        fMAni.SetBool("isAttackedR", false);

        bodyColliders.enabled = true;
    }

    public void DamagedEffect()
    {
        StartCoroutine(DmgEffect_co());
    }

    IEnumerator DmgEffect_co()
    {
        for (int i = 0; i < skinnedMeshRenderers.Length; i++)
        {
            skinnedMeshRenderers[i].materials = dmgMaterial;
            meshRenderer.material = dmgMaterial[0];
        }
        yield return new WaitForSeconds(0.2f);

        for (int i = 0; i < skinnedMeshRenderers.Length; i++)
        {
            skinnedMeshRenderers[i].materials = currMaterials[i];
            meshRenderer.material = currMaterial;
        }
    }

    public void ChangeMaterialDead()
    {
        StartCoroutine(DeadEffect_co());
    }

    IEnumerator DeadEffect_co()
    {
        float counter = 0;
        while (currMaterials[1][0].GetFloat("_DissolveAmount") < 1)
        {
            counter += dissolveRate;
            for (int j = 0; j < currMaterials[1].Length; j++)
            {
                for (int i = 0; i < skinnedMeshRenderers.Length; i++)
                {
                    currMaterials[i][j].SetFloat("_DissolveAmount", counter);
                }
            }
            currMaterial.SetFloat("_DissolveAmount", counter);
            yield return new WaitForSeconds(refreshRate);
        }
    }
    IEnumerator CreateSpirit_co()
    {
        yield return new WaitForSeconds(1f);
        GameObject spirit = Instantiate(spiritPrefab, transform.position, Quaternion.identity);
    } 
}

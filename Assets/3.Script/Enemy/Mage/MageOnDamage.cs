using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageOnDamage : MonoBehaviour
{
    Mage mage;
    SkinnedMeshRenderer[] skinnedMeshRenderer;
    Material[][] currMaterial = new Material[3][];
    [SerializeField] Material[] dmgMaterial;
    [SerializeField] Material[] deadMaterial;

    public float dissolveRate = 0.0125f;
    public float refreshRate = 0.025f;

    private void Start()
    {
        mage = GetComponentInParent<Mage>();
        skinnedMeshRenderer = mage.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>();
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            currMaterial[i] = skinnedMeshRenderer[i].materials;
        }
    }

    private void Update()
    {
        if (mage.hp <= 0)
        {
            mage.isDead = true;
            Debug.Log(mage.isDead);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill") || other.CompareTag("Weapon"))
        {
            mage.Damaged();
            StartCoroutine(DmgEffect_co());
        }
    }

    IEnumerator DmgEffect_co()
    {
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            skinnedMeshRenderer[i].materials = dmgMaterial;
        }
        yield return new WaitForSeconds(0.2f);

        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            skinnedMeshRenderer[i].materials = currMaterial[i];
        }
    }

    public void ChangeMaterialDead()
    {
        StartCoroutine(DeadEffect_co());
    }

    IEnumerator DeadEffect_co()
    {
        float counter = 0;
        while (currMaterial[1][0].GetFloat("_DissolveAmount") < 1)
        {
            counter += dissolveRate;
            for (int j = 0; j < currMaterial[1].Length; j++)
            {
                for (int i = 0; i < skinnedMeshRenderer.Length; i++)
                {
                    currMaterial[i][j].SetFloat("_DissolveAmount", counter);
                }
            }
            yield return new WaitForSeconds(refreshRate);
        }

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageOnDamage : MonoBehaviour
{
    Mage mage;
    SkinnedMeshRenderer[] skinnedMeshRenderer;
    Material[][] currMaterial = new Material[3][];
    [SerializeField] Material[] dmgMaterial;

    private void Start()
    {
        mage = GetComponentInParent<Mage>();
        skinnedMeshRenderer = mage.gameObject.GetComponentsInChildren<SkinnedMeshRenderer>();
        //Debug.Log(skinnedMeshRenderer[1].materials);
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            currMaterial[i] = skinnedMeshRenderer[i].materials;
        }
    }

    private void Update()
    {
        if (mage.hp.Equals(0))
        {
            mage.isDead = true;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {
            mage.hp--;
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
}

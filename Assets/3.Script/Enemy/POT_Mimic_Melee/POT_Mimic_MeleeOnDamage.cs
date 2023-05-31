using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_Mimic_MeleeOnDamage : MonoBehaviour
{
    POT_Mimic_Melee pot;

    [SerializeField] SkinnedMeshRenderer[] skinnedMeshRenderer;
    [SerializeField] MeshRenderer[] meshRenderers;

    Material[][] currSMaterial = new Material[14][];
    Material[][] currMaterial = new Material[14][];
    [SerializeField] Material[] dmgMaterial;

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            currSMaterial[i] = skinnedMeshRenderer[i].materials;
        }
        for (int i = 0; i < meshRenderers.Length; i++)
        {
            currMaterial[i] = meshRenderers[i].materials;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {
            StartCoroutine(DmgEffect_co());
        }
    }

    IEnumerator DmgEffect_co()
    {
        
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            skinnedMeshRenderer[i].materials = dmgMaterial;
        }
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            meshRenderers[i].materials = dmgMaterial;
        }
        yield return new WaitForSeconds(0.2f);

        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            skinnedMeshRenderer[i].materials = currSMaterial[i];
        }
        for (int i = 0; i < skinnedMeshRenderer.Length; i++)
        {
            meshRenderers[i].materials = currMaterial[i];
        }

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageDissolve : MonoBehaviour
{
    public SkinnedMeshRenderer skinnedMesh;
    public SkinnedMeshRenderer skinnedMesh2;
    public SkinnedMeshRenderer skinnedMesh3;
    private Material[] skinnedMaterials;
    private Material[] skinnedMaterials2;
    private Material[] skinnedMaterials3;
    public float dissolveRate = 0.0125f;
    public float refreshRate = 0.025f;

    private void Start()
    {
        if(skinnedMesh!=null)
        {
            skinnedMaterials = skinnedMesh.materials;
        }

        if (skinnedMesh2 != null)
        {
            skinnedMaterials2 = skinnedMesh2.materials;
        }

        if (skinnedMesh3 != null)
        {
            skinnedMaterials3 = skinnedMesh3.materials;
        }
    }

    private void Update()
    {
        if(Input.GetKeyDown(KeyCode.P))
        {
            StartCoroutine(DissolveCo());
            StartCoroutine(DissolveCo2());

            StartCoroutine(DissolveCo3());
        }

    }

    IEnumerator DissolveCo()
    {
        float counter = 0;
        if(skinnedMaterials.Length>0)
        {
            while(skinnedMaterials[0].GetFloat("_DissolveAmount")<1)
            {
                counter += dissolveRate;
                for(int i=0;i<skinnedMaterials.Length;i++)
                {
                    skinnedMaterials[i].SetFloat("_DissolveAmount", counter);
                }

                yield return new WaitForSeconds(refreshRate);
            }
        }

        if (skinnedMaterials2.Length > 0)
        {
            while (skinnedMaterials2[0].GetFloat("_DissolveAmount") < 1)
            {
                counter += dissolveRate;
                for (int i = 0; i < skinnedMaterials2.Length; i++)
                {
                    skinnedMaterials2[i].SetFloat("_DissolveAmount", counter);
                }

                yield return new WaitForSeconds(refreshRate);
            }
        }

        if (skinnedMaterials3.Length > 0)
        {
            while (skinnedMaterials3[0].GetFloat("_DissolveAmount") < 1)
            {
                counter += dissolveRate;
                for (int i = 0; i < skinnedMaterials.Length; i++)
                {
                    skinnedMaterials[i].SetFloat("_DissolveAmount", counter);
                }

                yield return new WaitForSeconds(refreshRate);
            }
        }
    }

    IEnumerator DissolveCo2()
    {
        float counter = 0;      

        if (skinnedMaterials2.Length > 0)
        {
            while (skinnedMaterials2[0].GetFloat("_DissolveAmount") < 1)
            {
                counter += dissolveRate;
                for (int i = 0; i < skinnedMaterials2.Length; i++)
                {
                    skinnedMaterials2[i].SetFloat("_DissolveAmount", counter);
                }

                yield return new WaitForSeconds(refreshRate);
            }
        }

       
    }

    IEnumerator DissolveCo3()
    {
        float counter = 0;


        if (skinnedMaterials3.Length > 0)
        {
            while (skinnedMaterials3[0].GetFloat("_DissolveAmount") < 1)
            {
                counter += dissolveRate;
                for (int i = 0; i < skinnedMaterials3.Length; i++)
                {
                    skinnedMaterials3[i].SetFloat("_DissolveAmount", counter);
                }

                yield return new WaitForSeconds(refreshRate);
            }
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotKeySphere : MonoBehaviour
{
    float size = 0.0001f;

    private void Start()
    {
        transform.localScale = new Vector3(size, size, size);
        StartCoroutine(PotKeySizeUp_co());
    }

    IEnumerator PotKeySizeUp_co()
    {
        while (transform.localScale.x < 0.017f)
        {
            transform.localScale += new Vector3(size, size, size);
            transform.localPosition += new Vector3(0f, 0.0002f, 0f);
            yield return null;
        }

        yield return new WaitForSeconds(1f);

        gameObject.SetActive(false);
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeyShrine : MonoBehaviour
{
    [SerializeField] Transform mansionKey;
    GameObject trailParticles;
    Right2Manager right2Manager;

    private void Start()
    {
        right2Manager = FindObjectOfType<Right2Manager>();
        trailParticles = transform.GetChild(8).gameObject;
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") || right2Manager.isKeyUnlock)
        {
            //Display [E]


            //Is player input button lock neccesary?
            if (Input.GetKeyDown(KeyCode.E))
            {
                StartCoroutine(KeyShrineUp_co());
            }
        }
        
    }

    IEnumerator KeyShrineUp_co()
    {
        yield return null;

        while (mansionKey.localPosition.y < 0.0298f)
        {
            mansionKey.localPosition += new Vector3(0f, 0.0005f, 0f);
            mansionKey.localEulerAngles += new Vector3(0f, 1f, 0f);
            yield return null;
        }

        float time = 0f;
        while (time < 0.8f)
        {
            mansionKey.localEulerAngles += new Vector3(0f, 7f, 0f);
            time += Time.deltaTime;
            yield return null;
        }

        //Key dissolve particle effect

        mansionKey.gameObject.SetActive(false);
        trailParticles.gameObject.SetActive(true);
        //Get Key
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeyShrine : MonoBehaviour
{
    [SerializeField] Transform mansionKey;
    GameObject trailParticles;
    GameObject commandBox;
    Right2Manager right2Manager;

    [SerializeField] GameObject KeyUI;

    bool isGetKey = false;

    private void Start()
    {
        right2Manager = FindObjectOfType<Right2Manager>();
        trailParticles = transform.GetChild(8).gameObject;
        commandBox = transform.GetChild(9).gameObject;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") || right2Manager.isKeyUnlock || !isGetKey)
        {
            //Display [E]
            commandBox.SetActive(true);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") || right2Manager.isKeyUnlock)
        {
            //Is player input button lock neccesary?
            if (Input.GetKeyDown(KeyCode.E))
            {
                isGetKey = true;
                commandBox.SetActive(false);
                KeyUI.SetActive(true);

                StartCoroutine(KeyShrineUp_co());
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player") || right2Manager.isKeyUnlock || !isGetKey)
        {
            commandBox.SetActive(false);
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

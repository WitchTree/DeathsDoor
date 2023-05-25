using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConsoleKey : MonoBehaviour
{
    [SerializeField]float downPos;
    [SerializeField] SpikeDoor spikeDoor;

    public void KeyDown()
    {
        StartCoroutine(KeyDown_co());
        Debug.Log("Start Co");
    }

    IEnumerator KeyDown_co()
    {
        while (transform.localPosition.y > downPos)
        {
            
            transform.localPosition += new Vector3(0f, -0.0001f, 0f);
            yield return null;
        }

        spikeDoor.OpenSpikeDoor();
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Weapon"))
        {
            StartCoroutine(KeyDown_co());
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeDoor : MonoBehaviour
{
    [SerializeField] float yPos = -0.066f;
    bool isOpen = false;

    public void OpenSpikeDoor()
    {
        for (int i = 2; i < transform.childCount; i++)
        {
            StartCoroutine(OpenSpike(transform.GetChild(i)));
        }
        isOpen = true;
    }

    IEnumerator OpenSpike(Transform spike)
    {
        Debug.Log(spike.localPosition.y);
        while (spike.localPosition.y > yPos)
        {
            spike.localPosition += new Vector3(0f, -0.001f, 0f);
            yield return null;
        }
        spike.localPosition = new Vector3(spike.localPosition.x, yPos, spike.localPosition.z);
    }
}

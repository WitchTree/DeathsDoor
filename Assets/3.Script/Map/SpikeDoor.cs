using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpikeDoor : MonoBehaviour
{
    [SerializeField] float yPos = -0.066f;
    Vector3[] childPos = new Vector3[7];

    private void Awake()
    {
        //원래 위치 저장
        for (int i = 2; i < transform.childCount; i++)
        {
            childPos[i - 2] = transform.GetChild(i).localPosition;
        }
    }

    public void OpenSpikeDoor()
    {
        for (int i = 2; i < transform.childCount; i++)
        {
            StartCoroutine(OpenSpike_co(transform.GetChild(i)));
        }
    }

    IEnumerator OpenSpike_co(Transform spike)
    {
        while (spike.localPosition.y > yPos)
        {
            spike.localPosition += new Vector3(0f, -0.001f, 0f);
            yield return null;
        }
        spike.localPosition = new Vector3(spike.localPosition.x, yPos, spike.localPosition.z);
    }

    public void CloseSpikeDoor()
    {
        for (int i = 2; i < transform.childCount; i++)
        {
            StartCoroutine(CloseSpike_co(transform.GetChild(i), childPos[i - 2]));
        }
    }

    IEnumerator CloseSpike_co(Transform spike, Vector3 pos)
    {
        while (spike.localPosition.y < pos.y)
        {
            spike.localPosition += new Vector3(0f, 0.001f, 0f);
            yield return null;
        }
        spike.localPosition = pos;
    }
}

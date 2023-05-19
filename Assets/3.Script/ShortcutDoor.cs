using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShortcutDoor : MonoBehaviour
{
    [SerializeField] Transform centerPos;

    public void OpenInward()
    {
        StartCoroutine(OpenInward_co());
    }

    IEnumerator OpenInward_co()
    {
        while (transform.eulerAngles.y < 270f)
        {
            transform.RotateAround(centerPos.position, Vector3.up, 50 * Time.deltaTime);
            yield return null;
        }
    }

    public void CloseFromInward()
    {
        StartCoroutine(CloseFromInward_co());
    }

    IEnumerator CloseFromInward_co()
    {
        while (transform.eulerAngles.y > 180f)
        {
            transform.RotateAround(centerPos.position, Vector3.up, -50 * Time.deltaTime);
            yield return null;
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ObjectTrigger : MonoBehaviour
{
    [SerializeField] Text text;
    [SerializeField] string textStr = "";

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            text.enabled = true;
            text.text = string.Format("[E] {0}", textStr);
        }
    }

    public void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            text.enabled = false;
        }
    }
}

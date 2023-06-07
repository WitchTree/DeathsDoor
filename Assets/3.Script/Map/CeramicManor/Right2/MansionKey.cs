using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MansionKey : MonoBehaviour
{
    // Update is called once per frame
    void Update()
    {
        transform.eulerAngles += new Vector3(0f, 0.05f, 0f);
    }
}

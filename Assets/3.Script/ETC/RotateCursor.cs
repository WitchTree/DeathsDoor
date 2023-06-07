using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCursor : MonoBehaviour
{
    
    public Transform target;

    private void Update()
    {
        transform.LookAt(target);
        transform.eulerAngles += new Vector3(90, 0, 0);
        
    }
}
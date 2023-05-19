using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FanRotate : MonoBehaviour
{
    
    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, 130f * Time.deltaTime, 0);
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TrinketsRotate : MonoBehaviour
{
    public float speed;

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, speed * Time.deltaTime, 0);
        Debug.Log("빛나는물건 돌고있음");
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMother : MonoBehaviour
{
    //Legs
    [SerializeField] Transform vines;
    [SerializeField] Transform body;

    float rotateSpeed = 30f;


    public void Spin()
    {
        StartCoroutine(RotateVines_co());
    }

    IEnumerator RotateVines_co()
    {
        while (true)
        {
            vines.RotateAround(body.position, Vector3.up, rotateSpeed * Time.deltaTime);
            yield return null;
        }
    }

}

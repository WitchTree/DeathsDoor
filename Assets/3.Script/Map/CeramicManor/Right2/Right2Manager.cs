using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Right2Manager : MonoBehaviour
{
    [Header("Fire Lamp")]
    [SerializeField] FireLamp[] fireLamps = new FireLamp[2];

    //Key 
    bool isLock = true;
    public bool isKeyUnlock = false;
    [SerializeField] Transform key;
    Animator keyAni;

    private void Start()
    {
        keyAni = key.GetComponent<Animator>();

        StartCoroutine(CheckKeyUnlock_co());
    }

    IEnumerator CheckKeyUnlock_co()
    {
        while (isLock)
        {
            if (fireLamps[0].isFire && fireLamps[1].isFire)
            {
                isKeyUnlock = true;

                //Key activate
                isLock = false; //do not start coroutine twice
                keyAni.SetTrigger("Down");
            }
            yield return null;
        }
        
    }
}

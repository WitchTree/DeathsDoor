using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMother : MonoBehaviour
{
    //Player
    [SerializeField] GameObject player;

    //Animator
    Animator forestMotherAni;


    private void Awake()
    {
        forestMotherAni = GetComponent<Animator>();
    }

    public void StartAttack() 
    {
        StartSpin();
    }

    void StartSpin()
    {
        forestMotherAni.SetTrigger("StartSpin");
    }

    public void SlamSlow()
    {
        forestMotherAni.SetTrigger("SlamSlow");
    }
}

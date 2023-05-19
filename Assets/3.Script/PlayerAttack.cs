using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack : MonoBehaviour
{
    public GameObject sword;

    [SerializeField] private Animator playerAni;
    public Transform swordPivot;

    void Start()
    {
        TryGetComponent(out playerAni);
    }


    void Update()
    {
        
    }

    private void OnAnimatorIK(int layerIndex)
    {

    }
}

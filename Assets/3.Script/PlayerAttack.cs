using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerAttack : MonoBehaviour
{
    [SerializeField] private Animator playerAni;

    public Transform gunPivot;
    public Transform leftHandMount;
    public Transform rightHandMount;


    void Start()
    {
        TryGetComponent(out playerAni);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnAnimatorIK(int layerIndex)
    {
       
    }
}

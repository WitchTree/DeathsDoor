using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CobwebDoor : MonoBehaviour
{
    Collider doorCollider;

    private void Start()
    {
        doorCollider = GetComponent<Collider>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {
            if(other.GetComponent<Weapon_Bow>().fireCheck)
            {
                doorCollider.enabled = false;
            }
        }
    }
}

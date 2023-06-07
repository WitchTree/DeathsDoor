using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CobwebDoor : MonoBehaviour
{
    Collider doorCollider;
    GameObject openEffect;

    [SerializeField] Animator cobwebFlatAni;

    private void Start()
    {
        doorCollider = GetComponent<Collider>();
        openEffect = transform.GetChild(0).gameObject;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {
            if(other.GetComponent<Weapon_Bow>().fireCheck)
            {
                doorCollider.enabled = false;
                openEffect.SetActive(true);

                cobwebFlatAni.SetTrigger("Open");
            }
        }
    }
}

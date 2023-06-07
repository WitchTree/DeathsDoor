using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoisionPot : MonoBehaviour
{
    public GameObject Pot_Purple;
    public GameObject Pot_PurpleCell;
    public float sphereRadius = 5f;
    public ParticleSystem particleObject;
    private int count = 1;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill") && count == 1)
        {
            StartCoroutine(Explosion());           
        }
    }

    private void OnDrawGizmos()    
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, sphereRadius);
    }

    private IEnumerator Explosion()
    {
        yield return new WaitForSeconds(0.1f);
        Debug.Log("독항아리 터진다!!");

        int layerMask = -1; // 모든 레이어를 검출

        RaycastHit[] rayHits = Physics.SphereCastAll(transform.position, sphereRadius, Vector3.up, 0f, layerMask);

        foreach (RaycastHit hitObj in rayHits)
        {
            if (hitObj.transform != null)
            {
                Mage megetComponent = hitObj.transform.GetComponent<Mage>();
                PlayerOnDamage playerComponent = hitObj.transform.GetComponent<PlayerOnDamage>();


                if (megetComponent != null)
                {
                    megetComponent.HitPot(transform.position);
                }
                if (playerComponent != null)
                {
                    playerComponent.HitPot(transform.position);
                }

              
            }
        }
        Pot_Purple.SetActive(false);
        Pot_PurpleCell.SetActive(true);

        particleObject.Play();
        count--;
        //Destroy(gameObject);
    }
}

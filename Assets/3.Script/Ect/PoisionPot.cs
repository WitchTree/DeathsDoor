using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoisionPot : MonoBehaviour
{
    public GameObject Pot_Purple;
    public float sphereRadius = 5f;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
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
                //Bat batComponent = hitObj.transform.GetComponent<Bat>();
                PlayerOnDamage playerComponent = hitObj.transform.GetComponent<PlayerOnDamage>();


                //if (batComponent != null)
                //{
                //    batComponent.HitPot(transform.position);
                //}
                if (playerComponent != null)
                {
                    playerComponent.HitPot(transform.position);
                }
              
            }
        }
        Destroy(gameObject);
    }
}

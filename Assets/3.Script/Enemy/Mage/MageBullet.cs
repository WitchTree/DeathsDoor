using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageBullet : MonoBehaviour
{
    Transform player;
    PlayerOnDamage playerOnDamage;

    Vector3 dest;
    float speed = 5f;

    float yDist = -4.768372E-07f;

    // Start is called before the first frame update
    void Start()
    {
        player = FindObjectOfType<PlayerController>().transform;
        playerOnDamage = FindObjectOfType<PlayerOnDamage>();
        dest = player.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = Vector3.MoveTowards(transform.position, dest, speed * Time.deltaTime);
        if (dest.y - transform.position.y > yDist)
        {
            Destroy(gameObject);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && !playerOnDamage.isSuffer)
        {
            playerOnDamage.PlayerSuffered();
            Destroy(gameObject);
        }
        else if (other.CompareTag("Skill"))
        {
            dest = transform.parent.position;
            Destroy(gameObject);
        }
        else if (other.CompareTag("Wall"))
        {
            Destroy(gameObject);
        }
    }
}

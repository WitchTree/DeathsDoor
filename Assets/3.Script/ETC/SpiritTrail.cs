using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpiritTrail : MonoBehaviour
{
    Transform player;
    float speed = 5f;

    private void Awake()
    {
        player = FindObjectOfType<PlayerController>().transform;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position = Vector3.MoveTowards(transform.position, player.position, speed * Time.deltaTime);
        if ((transform.position - player.position).sqrMagnitude < 0.0001f)
        {
            Destroy(gameObject);
        }
    }
}

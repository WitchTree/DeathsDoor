using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;
    [SerializeField] private int speed = 100;
    private bool isShoot = false;

    private Player_skill player;

    private void Awake()
    {
        player = FindObjectOfType<Player_skill>();
    }
    void Update()
    {
        Shoot();
        if (isShoot)
        {
            transform.position += transform.up * 5f * Time.deltaTime;
        }
    }

    private void Shoot()
    {
        if (Input.GetMouseButtonUp(1))
        {
            isShoot = true;

            gameObject.transform.SetParent(null);//부모에서 자식을 빼낸거임
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("ETC"))
        {
            Destroy(gameObject);
        }
    }



}

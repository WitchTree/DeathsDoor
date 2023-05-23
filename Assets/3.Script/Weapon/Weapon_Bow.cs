using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;
    [SerializeField] private int speed = 2;
    private bool isShoot = false;

    public Enemy enemy;

    private void Awake()
    {
        enemy = FindObjectOfType<Enemy>();
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

            gameObject.transform.SetParent(null);//�θ𿡼� �ڽ��� ��������
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("ETC"))
        {
            Enemy.hp;
            Destroy(gameObject);
        }
    }



}

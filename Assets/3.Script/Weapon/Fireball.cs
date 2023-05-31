using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Fireball : MonoBehaviour
{
    public PlayerState playerState;
    public PlayerInput playerInput;
    private int speed = 10;
    private bool isShoot = false;

    public Enemy enemy;

    public float weaponDamage;

    private void Awake()
    {
        enemy = FindObjectOfType<Enemy>();
        playerInput = FindObjectOfType<PlayerInput>();
        playerState = FindObjectOfType<PlayerState>();

        weaponDamage = playerState.skillDamage_2;
    }

    void Update()
    {
        Shoot();
        if (isShoot)
        {
            transform.position += transform.up * speed * Time.deltaTime;
        }
        if (!IsVisibleByCamera())
        {
            Destroy(gameObject);
        }
    }

    private void Shoot()
    {
        if (playerInput.isSkill_end)
        {
            isShoot = true;

            gameObject.transform.SetParent(null);//부모에서 자식을 빼낸거임
        }
    }

    //public void OnTriggerEnter(Collider other)
    //{
    //    if (other.CompareTag("Enemy"))
    //    {
    //        Debug.Log("몬스터 잡았다.");
    //        Destroy(gameObject);
    //    }

    //    else if (!other.CompareTag("Player"))
    //    {
    //        Debug.Log("충돌했으니 사라지자");
    //        Destroy(gameObject);
    //    }

        
    //}

    private bool IsVisibleByCamera()
    {
        Camera mainCamera = Camera.main;
        Vector3 viewportPos = mainCamera.WorldToViewportPoint(transform.position);

        if (viewportPos.x < 0 || viewportPos.x > 1 || viewportPos.y < 0 || viewportPos.y > 1)
        {
            return false; 
        }

        return true;
    }
}

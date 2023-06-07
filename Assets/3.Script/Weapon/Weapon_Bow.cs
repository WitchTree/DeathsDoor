using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    public PlayerState playerState;
    public PlayerInput playerInput;
    private int speed = 10;
    private bool isShoot = false;
    public bool isfire = false;
    public bool fireCheck = false;
    public Enemy enemy;
    public ParticleSystem particleObject;

    bool isHit = false;
    Vector3 hitPos;

    private static Weapon_Bow Instance;
    public static Weapon_Bow instance
    {
        get
        {
            if (Instance == null)
            {
                Instance = FindObjectOfType<Weapon_Bow>();
            }
            return Instance;
        }
    }

    private void Awake()
    {
        enemy = FindObjectOfType<Enemy>();
        playerInput = FindObjectOfType<PlayerInput>();
        playerState = FindObjectOfType<PlayerState>();

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

        if (isHit)
        {
            transform.GetChild(2).position = hitPos;
        }


    }

    private void Shoot()
    {
        if (playerInput.isSkill_end)
        {
            isShoot = true;
            
            gameObject.transform.SetParent(null);
        }

    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Fire"))
        {
            isfire = true;
            fireCheck = isfire;
            particleObject.Play();
        }

        if (!other.CompareTag("Player") )
        {
            transform.GetChild(0).gameObject.SetActive(false);
            transform.GetChild(2).gameObject.SetActive(true);

            isHit = true;
            hitPos = transform.GetChild(2).position;

            StartCoroutine(DestoryBow_co());
        }    
    }

    IEnumerator DestoryBow_co()
    {
        yield return new WaitForSeconds(1f);
        Destroy(gameObject);
    }

    private bool IsVisibleByCamera()//카메라 밖에서 사라짐
    {
        Camera mainCamera = Camera.main;
        Vector3 viewportPos = mainCamera.WorldToViewportPoint(transform.position);

        if (viewportPos.x < 0 || viewportPos.x > 1 || viewportPos.y < 0 || viewportPos.y > 1)
        {
            return false;
        }

        return true; // 총알이 카메라 안에 있음
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    public Player_State playerState;
    public PlayerInput playerInput;
    private int speed = 10;
    private bool isShoot = false;
    public bool isfire = false;
    public bool fireCheck = false;
    public Enemy enemy;


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
        playerState = FindObjectOfType<Player_State>();

        //weaponDamage = playerState.skillDamage_1;
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
            
            gameObject.transform.SetParent(null);
        }

    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Fire"))
        {
            isfire = true;
            Debug.Log("이제 불화살임");
            fireCheck = isfire;
        }

        if (!other.CompareTag("Player") )
        {
            Debug.Log("충돌했으니 사라지자");
            //Destroy(gameObject);
        }    
    }

    private bool IsVisibleByCamera()//카메라 밖에서 사라짐
    {
        // 총알이 카메라에 보이는지 확인하는 로직을 구현합니다.
        // 총알의 Collider를 사용하여 충돌 감지를 할 수도 있습니다.
        // 예를 들어, 아래와 같이 카메라를 기준으로 총알의 위치를 확인할 수 있습니다.

        /*
        Camera mainCamera = Camera.main;
        Vector3 viewportPos = mainCamera.WorldToViewportPoint(transform.position);

        if (viewportPos.x < 0 || viewportPos.x > 1 || viewportPos.y < 0 || viewportPos.y > 1)
        {
            return false; // 총알이 카메라 밖에 있음
        }
        */

        return true; // 총알이 카메라 안에 있음
    }
}

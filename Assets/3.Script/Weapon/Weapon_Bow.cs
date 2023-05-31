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
            Debug.Log("���� ��ȭ����");
            fireCheck = isfire;
        }

        if (!other.CompareTag("Player") )
        {
            Debug.Log("�浹������ �������");
            //Destroy(gameObject);
        }    
    }

    private bool IsVisibleByCamera()//ī�޶� �ۿ��� �����
    {
        // �Ѿ��� ī�޶� ���̴��� Ȯ���ϴ� ������ �����մϴ�.
        // �Ѿ��� Collider�� ����Ͽ� �浹 ������ �� ���� �ֽ��ϴ�.
        // ���� ���, �Ʒ��� ���� ī�޶� �������� �Ѿ��� ��ġ�� Ȯ���� �� �ֽ��ϴ�.

        /*
        Camera mainCamera = Camera.main;
        Vector3 viewportPos = mainCamera.WorldToViewportPoint(transform.position);

        if (viewportPos.x < 0 || viewportPos.x > 1 || viewportPos.y < 0 || viewportPos.y > 1)
        {
            return false; // �Ѿ��� ī�޶� �ۿ� ����
        }
        */

        return true; // �Ѿ��� ī�޶� �ȿ� ����
    }
}

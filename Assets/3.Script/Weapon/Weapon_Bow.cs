using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;
    [SerializeField] private int speed = 100;
    private bool isShoot = false;

    private Player_skill playerSkill;

    private void Awake()
    {
        playerInput = FindObjectOfType<PlayerInput>();
        playerSkill = FindObjectOfType<Player_skill>();
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
            Vector3 currRot = transform.eulerAngles;
            transform.eulerAngles = new Vector3(90f, currRot.y, currRot.z);
            Vector3 currPos = transform.position;
            transform.position = new Vector3(currPos.x, currPos.y + 0.3f, currPos.z);

            gameObject.transform.SetParent(null);//부모에서 자식을 빼낸거임
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        { 
            other.GetComponentInParent<Bat>().Dead();
            Destroy(gameObject);
        }
    }



}

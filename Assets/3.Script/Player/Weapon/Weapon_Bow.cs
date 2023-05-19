using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Weapon_Bow : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;

    private int speed = 1;


    void Update()
    {
        if (!playerInput.isSkill_start)
        {
            Vector3 dir = Vector3.up;//방향을 구함
            transform.position += dir * speed * Time.deltaTime;//이동
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_skill : MonoBehaviour
{
    private Animator ani;

    public Transform weaponPivot;
    public GameObject arrow;

    public bool isSkill = false;
    void Start()
    {
        ani = GetComponent<Animator>();
    }
    private void Update()
    {
        Skill();
    }
    public void Skill()
    {
        if (Input.GetKeyDown(KeyCode.Mouse1))
        {
            isSkill = true;


            ani.SetBool("Bow", isSkill);

        }
        if (Input.GetKeyUp(KeyCode.Q))
        {
            isSkill = false;
            ani.SetBool("Bow", isSkill);
        }
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bat : Enemy
{
    [SerializeField] Vector3 center;

    protected override void Start()
    {
        SetBat();
        center = transform.position;
        base.Start();
    }

    protected override void Update()
    {
        //Move();
        base.Update();
    }

    void SetBat()
    {
        this.hp = 1;
        this.sprit = 2;
    }

    protected override void Move()
    {
        Debug.Log("move");
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface IEnemy
{
    //default
    float attack { get; set; }
    float hp { get; set; }
    int sprit { get; set; }

    //player detect
    bool isAttracted { get; set; }
    float attractRadius { get; set; }

    //move
    Vector3 center { get; set; }

    void Attack();
}

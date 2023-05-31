using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "ScriptableObject/Sword_data")]
public class Sword_Data : ScriptableObject
{
    public float damage = 1f;//공격력

    public float DelayTime = 0.5f;//공격속도(지연시간?)
}

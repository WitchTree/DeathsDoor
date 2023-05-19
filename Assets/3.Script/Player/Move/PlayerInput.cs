using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    [SerializeField] private string MoveAxisName = "Vertical";
    [SerializeField] private string RotateAxisName = "Horizontal";
    [SerializeField] private string Roll = "Jump";
    [SerializeField] private string lightSword = "Fire1";//마우스 inputmanager가면 이해 가능
    [SerializeField] private string skill = "Fire2";
    [SerializeField] private string strongSword = "Fire3";

    //Get Axis -> return  float 자료형
    public float Move_Value { get; private set; }
    public float Rotate_Value { get; private set; }

    //Get button -> return bool 자료형 
    public bool isRoll { get; private set; }
    public bool isLight { get; private set; }
    public bool isStrong { get; private set; }
    public bool isSkill_start { get; private set; }
    public bool isSkill_end { get; private set; }
    

    // Update is called once per frame
    void Update()
    {
        Move_Value = Input.GetAxis(MoveAxisName);
        Rotate_Value = Input.GetAxis(RotateAxisName);

        isRoll = Input.GetKeyDown(KeyCode.Space);
        isLight = Input.GetButton(lightSword);
        isStrong = Input.GetButton(strongSword);
        isSkill_start = Input.GetButtonDown(skill);
        isSkill_end = Input.GetButtonUp(skill);
    }
}

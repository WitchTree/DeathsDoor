using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerInput : MonoBehaviour
{
    [SerializeField] private string MoveAxisName = "Vertical";
    [SerializeField] private string RotateAxisName = "Horizontal";
    //[SerializeField] private string Roll = "Jump";
    [SerializeField] private string lightSword = "Fire1";
    [SerializeField] private string strongSword = "Fire3";
    [SerializeField] private string Bow = "Fire2";

    //Get Axis -> return  float 자료형
    public float Move_Value { get; private set; }
    public float Rotate_Value { get; private set; }

    //Get button -> return bool 자료형 
    public bool isRoll { get; private set; }
    public bool isLight { get; private set; }
    public bool isStrong { get; private set; }
    public bool isBow { get; private set; }

    public bool AtkLook { get; private set; }
    public bool isLock = false;


    // Update is called once per frame
    void Update()
    {
        if (!isLock)
        {
        Move_Value = Input.GetAxis(MoveAxisName);
        Rotate_Value = Input.GetAxis(RotateAxisName);

        AtkLook = Input.GetButton(lightSword);
        isRoll = Input.GetKeyDown(KeyCode.Space);
        isLight = Input.GetButtonDown(lightSword);
        isStrong = Input.GetButton(strongSword);
        isStrong = Input.GetButton(strongSword);
        isBow = Input.GetButton(Bow);
        }
    }
}

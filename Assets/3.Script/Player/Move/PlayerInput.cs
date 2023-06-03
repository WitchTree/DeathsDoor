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
    [SerializeField] private string skill = "Fire2";

    //Get Axis -> return  float ÀÚ·áÇü
    public float Move_Value { get; private set; }
    public float Rotate_Value { get; private set; }

    //Get button -> return bool ÀÚ·áÇü 
    public bool isRoll { get; private set; }
    public bool isLight { get; private set; }
    public bool isStrong { get; private set; }
    public bool isRollATk { get; private set; }
    public bool isBow { get; private set; }
    public bool isLock = false;

    public bool AtkLook { get; private set; }
    public bool isSkill_start { get; private set; }
    public bool isSkill_end { get; private set; }
    public bool skill1 { get; private set; }
    public bool skill2 { get; private set; }
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
            isRollATk = Input.GetButton(strongSword);
            isStrong = Input.GetButtonUp(strongSword);

            AtkLook = Input.GetButton(lightSword);
            isRoll = Input.GetKeyDown(KeyCode.Space);
            isLight = Input.GetButtonDown(lightSword);
            isRollATk = Input.GetButtonDown(strongSword);
            isStrong = Input.GetButtonUp(strongSword);


            isSkill_start = Input.GetButton(skill);
            isSkill_end = Input.GetButtonUp(skill);
            skill1 = Input.GetButtonDown("Skill1");
            skill2 = Input.GetButtonDown("Skill2");
        }
    }
}
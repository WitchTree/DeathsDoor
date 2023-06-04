using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class HudUIManagement : MonoBehaviour
{

    public PlayerState playerState;

    [Header("��ų")]
    public GameObject[] skillSelect;
    [SerializeField] GameObject[] skillBox;
    [SerializeField] GameObject[] skillIcon;

    [SerializeField] int skillSelectedBtn= 0;

    [Header("HP")]
    public GameObject[] playerHealthEmpty;
    public GameObject[] playerHpFill;
    [SerializeField] int healthCnt= 4;

    [Header("MP")]
    public GameObject[] playerSkillEmpty;
    public GameObject[] playerSkillFill;
    [SerializeField] int skillCnt= 4;

    bool buttonPressed = false;

    GameObject firstSkill;

    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;


    // Update is called once per frame
    void Update()
    {
        SetMenuUI();
        HudSkillSelectKeyboardInput();
    }

    private void FixedUpdate()
    {
        PlayerHealthCondition();
        PlayerSkillFillcondition();
    }


    private void SetMenuUI()
    {
        if (skillSelect.Length > 0)
        {
            if (firstSkill != skillSelect[0])
            {
                skillSelectedBtn = 0;
            }
            firstSkill = skillSelect[0];
        }

        btn_pos = skillSelect[skillSelectedBtn].GetComponent<RectTransform>().position;

        horizontalDifference = new float[skillSelect.Length];
        verticallDifference = new float[skillSelect.Length];

        for (int i = 0; i < skillSelect.Length; i++)
        {
            if (i != skillSelectedBtn)
            {
                Vector3 btn_pos2 = skillSelect[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        EventSystem.current.SetSelectedGameObject(skillSelect[skillSelectedBtn]);
    }

    private void HudSkillSelectKeyboardInput()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1) && !buttonPressed)
        {
            Debug.Log("1Ű ����");
            buttonPressed = true;

            skillBox[0].SetActive(true);
            skillBox[1].SetActive(false);
            skillBox[2].SetActive(false);
            skillBox[3].SetActive(false);
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && !buttonPressed)
        {
            Debug.Log("2Ű ����");
            buttonPressed = true;

            skillBox[0].SetActive(false);
            skillBox[1].SetActive(true);
            skillBox[2].SetActive(false);
            skillBox[3].SetActive(false);
        }

        //if (Input.GetKeyDown(KeyCode.Alpha3) && !buttonPressed)
        //{
        //    Debug.Log("3Ű ����");
        //    buttonPressed = true;
        //
        //    skillBox[0].SetActive(false);
        //    skillBox[1].SetActive(false);
        //    skillBox[2].SetActive(true);
        //    skillBox[3].SetActive(false);
        //}
        //
        //if (Input.GetKeyDown(KeyCode.Alpha4) && !buttonPressed)
        //{
        //    Debug.Log("4Ű ����");
        //    buttonPressed = true;
        //
        //    skillBox[0].SetActive(false);
        //    skillBox[1].SetActive(false);
        //    skillBox[2].SetActive(false);
        //    skillBox[3].SetActive(true);
        //}


        if (buttonPressed)
        {
            buttonPressed = false;
            Debug.Log("��ų ���� ����");
        }
    }


    public void PlayerHealthCondition()
    {
        switch (playerState.life)
        {
            case 0:
                playerHpFill[0].SetActive(false);
                playerHpFill[1].SetActive(false);
                playerHpFill[2].SetActive(false);
                playerHpFill[3].SetActive(false);
                //dead
                break;

            case 1:
                playerHpFill[0].SetActive(true);
                playerHpFill[1].SetActive(false);
                playerHpFill[2].SetActive(false);
                playerHpFill[3].SetActive(false);
                break;

            case 2:
                playerHpFill[0].SetActive(true);
                playerHpFill[1].SetActive(true);
                playerHpFill[2].SetActive(false);
                playerHpFill[3].SetActive(false);
                break;

            case 3:
                playerHpFill[0].SetActive(true);
                playerHpFill[1].SetActive(true);
                playerHpFill[2].SetActive(true);
                playerHpFill[3].SetActive(false);
                break;

            case 4:
                playerHpFill[0].SetActive(true);
                playerHpFill[1].SetActive(true);
                playerHpFill[2].SetActive(true);
                playerHpFill[3].SetActive(true);
                break;
        }
        //�� �Ծ��� �� HPFill+=4; (���� Ȱ��ȭ)
        //���� �� ���� HPFill--;(��Ȱ��ȭ)
        //0�� �Ǹ� ��� DaathCheck->deadUI ����
    }

    private void PlayerSkillFillcondition()
    {
        switch (playerState.skill)
        {
            case 0:
                playerSkillFill[0].SetActive(false);
                playerSkillFill[1].SetActive(false);
                playerSkillFill[2].SetActive(false);
                playerSkillFill[3].SetActive(false);
                break;

            case 1:
                playerSkillFill[0].SetActive(true);
                playerSkillFill[1].SetActive(false);
                playerSkillFill[2].SetActive(false);
                playerSkillFill[3].SetActive(false);
                break;

            case 2:
                playerSkillFill[0].SetActive(true);
                playerSkillFill[1].SetActive(true);
                playerSkillFill[2].SetActive(false);
                playerSkillFill[3].SetActive(false);
                break;

            case 3:
                playerSkillFill[0].SetActive(true);
                playerSkillFill[1].SetActive(true);
                playerSkillFill[2].SetActive(true);
                playerSkillFill[3].SetActive(false);
                break;

            case 4:
                playerSkillFill[0].SetActive(true);
                playerSkillFill[1].SetActive(true);
                playerSkillFill[2].SetActive(true);
                playerSkillFill[3].SetActive(true);
                break;
        }
        //���͸� ���� ������ MPFill ++; (Ȱ��ȭ)
        //����,�׾Ƹ� ���������� MpFill++; (Ȱ��ȭ)
        //��ų ����� ������ MPFill++; (Ȱ��ȭ)
        // ��, 4�� �̻� ������ �ʰ�

        //0�̵Ǹ� ��ų ��� x (���� ��Ȱ��ȭ)
    }

}

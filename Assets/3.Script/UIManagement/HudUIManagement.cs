using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class HudUIManagement : MonoBehaviour
{

    public Player_State playerState;

    //heal���� ����;
    //skill���� ����;
    //objecttrigger ���� ����;
    //sword tringger ���� ����;
    //��� ���� ����;

    [Header("��ų")]
    public GameObject[] skillSelect;
    [SerializeField] GameObject[] skillBox;
    [SerializeField] GameObject[] skillIcon;

    [SerializeField] int skillSelectedBtn= 0;

    [Header("HP")]
    public GameObject[] playerHeealth;

    [Header("MP")]
    public GameObject[] playerSkillFill;

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
            //panel�� Ȱ��ȭ �Ǿ��ִ� �� Ȯ���ϰ�, ����Ǿ��� ��� ù��° ��ư Ȱ��ȭ
            if (firstSkill != skillSelect[0])
            {
                skillSelectedBtn = 0;
            }
            firstSkill = skillSelect[0];
        }

        //Ȱ��ȭ �� ��ư�� ��ġ ��������
        btn_pos = skillSelect[skillSelectedBtn].GetComponent<RectTransform>().position;

        //��ư ��ġ ���̸� ��Ÿ���� �迭
        horizontalDifference = new float[skillSelect.Length];
        verticallDifference = new float[skillSelect.Length];

        //��ư ��ġ ���̸� ���
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
            Debug.Log("1Ű ����"); //ȭ�� ��ų
            buttonPressed = true;

            skillBox[0].SetActive(true);
            skillBox[1].SetActive(false);
            skillBox[2].SetActive(false);
            skillBox[3].SetActive(false);
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && !buttonPressed)
        {
            Debug.Log("2Ű ����"); //�� ��ų
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


    private void PlayerHealthCondition()
    {
        //�� �Ծ��� �� HPFill+=4; (���� Ȱ��ȭ)
        //���� �� ���� HPFill--;(��Ȱ��ȭ)
        //0�� �Ǹ� ��� DaathCheck->deadUI ����
    }

    private void PlayerSkillFillcondition()
    {
        //���͸� ���� ������ MPFill ++; (Ȱ��ȭ)
        //����,�׾Ƹ� ���������� MpFill++; (Ȱ��ȭ)
        //��ų ����� ������ MPFill++; (Ȱ��ȭ)
        // ��, 4�� �̻� ������ �ʰ�

        //0�̵Ǹ� ��ų ��� x (���� ��Ȱ��ȭ)

    }

}

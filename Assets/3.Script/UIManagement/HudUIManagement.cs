using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class HudUIManagement : MonoBehaviour
{

    public Player_State playerState;

    //heal관련 변수;
    //skill관련 변수;
    //objecttrigger 관련 변수;
    //sword tringger 관련 변수;
    //사망 관련 변수;

    [Header("스킬")]
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
            //panel이 활성화 되어있는 지 확인하고, 변경되었을 경우 첫번째 버튼 활성화
            if (firstSkill != skillSelect[0])
            {
                skillSelectedBtn = 0;
            }
            firstSkill = skillSelect[0];
        }

        //활성화 된 버튼의 위치 가져오기
        btn_pos = skillSelect[skillSelectedBtn].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        horizontalDifference = new float[skillSelect.Length];
        verticallDifference = new float[skillSelect.Length];

        //버튼 위치 차이를 계산
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
            Debug.Log("1키 누름"); //화살 스킬
            buttonPressed = true;

            skillBox[0].SetActive(true);
            skillBox[1].SetActive(false);
            skillBox[2].SetActive(false);
            skillBox[3].SetActive(false);
        }

        if (Input.GetKeyDown(KeyCode.Alpha2) && !buttonPressed)
        {
            Debug.Log("2키 누름"); //불 스킬
            buttonPressed = true;

            skillBox[0].SetActive(false);
            skillBox[1].SetActive(true);
            skillBox[2].SetActive(false);
            skillBox[3].SetActive(false);
        }

        //if (Input.GetKeyDown(KeyCode.Alpha3) && !buttonPressed)
        //{
        //    Debug.Log("3키 누름");
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
        //    Debug.Log("4키 누름");
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
            Debug.Log("스킬 선택 해제");
        }
    }


    private void PlayerHealthCondition()
    {
        //꽃 먹었을 때 HPFill+=4; (전부 활성화)
        //맞을 때 마다 HPFill--;(비활성화)
        //0이 되면 사망 DaathCheck->deadUI 띄우기
    }

    private void PlayerSkillFillcondition()
    {
        //몬스터를 때릴 때마다 MPFill ++; (활성화)
        //버섯,항아리 때릴때마다 MpFill++; (활성화)
        //스킬 사용할 때마다 MPFill++; (활성화)
        // 단, 4개 이상 켜지지 않게

        //0이되면 스킬 사용 x (전부 비활성화)

    }

}

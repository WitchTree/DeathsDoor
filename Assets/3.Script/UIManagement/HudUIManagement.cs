using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class HudUIManagement : MonoBehaviour
{
    public GameObject[] skillSelect;
    [SerializeField] GameObject[] skillBox;
    [SerializeField] GameObject[] skillIcon;

    [SerializeField] int selectedButton = 0;


    bool buttonPressed = false;

    GameObject firstSkill;

    //뭔지몰라도 일단 위에 올려둠
    Vector3 btn_pos;
    float[] horizontalDifference;
    float[] verticallDifference;


    // Update is called once per frame
    void Update()
    {
        SetMenuUI();
        HudSkillSelectKeyboardInput();
    }

    private void SetMenuUI()
    {
        if (skillSelect.Length > 0)
        {
            //panel이 활성화 되어있는 지 확인하고, 변경되었을 경우 첫번째 버튼 활성화
            if (firstSkill != skillSelect[0])
            {
                selectedButton = 0;
            }
            firstSkill = skillSelect[0];
        }

        //활성화 된 버튼의 위치 가져오기
        btn_pos = skillSelect[selectedButton].GetComponent<RectTransform>().position;

        //버튼 위치 차이를 나타내는 배열
        horizontalDifference = new float[skillSelect.Length];
        verticallDifference = new float[skillSelect.Length];

        //버튼 위치 차이를 계산
        for (int i = 0; i < skillSelect.Length; i++)
        {
            if (i != selectedButton)
            {
                Vector3 btn_pos2 = skillSelect[i].GetComponent<RectTransform>().position;
                horizontalDifference[i] = btn_pos.x - btn_pos2.x;
                verticallDifference[i] = btn_pos.y - btn_pos2.y;
            }
        }
        EventSystem.current.SetSelectedGameObject(skillSelect[selectedButton]);
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

}

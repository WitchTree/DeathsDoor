using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


public class ArrowPosition : MonoBehaviour
{
    public PlayerInput playerInput;
    public int cameraNum;
    public CinemachineVirtualCamera[] vcam;
    public GameObject cameraObject;


    // Update is called once per frame
    void Update()
    {
        if(playerInput.isSkill_start&& cameraNum==1)
        {
            SettingCamera1();
        }

        if (playerInput.isSkill_start && cameraNum == 2)
        {
            SettingCamera2();

        }

        if (playerInput.isSkill_start && cameraNum == 3)
        {
            SettingCamera3();
        }

        if (playerInput.isSkill_start && cameraNum == 4)
        {
            SettingCamera4();
        }

        if (playerInput.isSkill_start && cameraNum == 5)
        {
            SettingCamera5();
        }

        if (playerInput.isSkill_start && cameraNum == 6)
        {
            SettingCamera6();
        }

        if (playerInput.isSkill_start && cameraNum == 7)
        {
            SettingCamera7();
        }

        if (playerInput.isSkill_start && cameraNum == 8)
        {
            SettingCamera8();
        }



        if (!playerInput.isSkill_start)
        {
            ResetCamera();
        }
    }

    private void OnTriggerEnter(Collider other) 
    {
        if(other.CompareTag("Player"))
        {            

            if (cameraObject.gameObject.name == "1")
            {
                cameraNum = 1;
            }

            if (cameraObject.gameObject.name == "2")
            {
                cameraNum = 2;
            }

            if (cameraObject.gameObject.name == "3")
            {
                cameraNum = 3;
            }

            if (cameraObject.gameObject.name == "4")
            {
                cameraNum = 4;
            }

            if (cameraObject.gameObject.name == "5")
            {
                cameraNum = 5;
            }

            if (cameraObject.gameObject.name == "6")
            {
                cameraNum = 6;
            }

            if (cameraObject.gameObject.name == "7")
            {
                cameraNum = 7;
            }

            if (cameraObject.gameObject.name == "8")
            {
                cameraNum = 8;
            }

        }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            cameraNum = 0;
        }
    }

    private void SettingCamera1()
    {
        vcam[1].gameObject.SetActive(true);    
        vcam[0].gameObject.SetActive(false);
    }

    private void SettingCamera2()
    {
        vcam[2].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[2].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera3()
    {
        vcam[3].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[3].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera4()
    {
        vcam[4].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[4].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera5()
    {
        vcam[5].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[5].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera6()
    {
        vcam[6].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[6].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera7()
    {
        vcam[7].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[7].m_Lens.NearClipPlane = -7.65f;
    }

    private void SettingCamera8()
    {
        vcam[8].gameObject.SetActive(true);
        vcam[0].gameObject.SetActive(false);
        vcam[8].m_Lens.NearClipPlane = -7.65f;
    }

    private void ResetCamera()
    {
        
        vcam[0].gameObject.SetActive(true);
        vcam[1].gameObject.SetActive(false);
        vcam[2].gameObject.SetActive(false);
        vcam[3].gameObject.SetActive(false);
        vcam[4].gameObject.SetActive(false);
        vcam[5].gameObject.SetActive(false);
        vcam[6].gameObject.SetActive(false);
        vcam[7].gameObject.SetActive(false);
        vcam[8].gameObject.SetActive(false);
    }
}

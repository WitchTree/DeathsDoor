using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;


public class ArrowPosition : MonoBehaviour
{
    public PlayerInput playerInput;
    public bool isTouched;
    public CinemachineVirtualCamera[] vcam;

    // Update is called once per frame
    void Update()
    {
        if(playerInput.isSkill_start&&isTouched)
        {
            SettingCamera();
        }

        else if(!playerInput.isSkill_start||!isTouched)
        {
            vcam[0].gameObject.SetActive(true);
            vcam[1].gameObject.SetActive(false);    
        }
    }

    private void OnTriggerEnter(Collider other) 
    {
        if(other.CompareTag("Player"))
        {
            isTouched=true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            isTouched=false;
        }
    }

    private void SettingCamera()
    {
        vcam[0].gameObject.SetActive(false);
        vcam[1].gameObject.SetActive(true);    
    }

    private void ResetCamera()
    {
        vcam[0].gameObject.SetActive(true);
        vcam[1].gameObject.SetActive(false);    
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CameraNearClipping : MonoBehaviour
{
    public CinemachineVirtualCamera vcam;
    void Start()
    {
        vcam.m_Lens.NearClipPlane=-2.15f;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}

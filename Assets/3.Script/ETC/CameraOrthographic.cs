using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class CameraOrthographic : MonoBehaviour
{
    public CinemachineVirtualCamera vcam; 
    void Start()
    {        
        vcam.m_Lens.OrthographicSize = 4;
        //vcam.m_Lens.t
    }

}







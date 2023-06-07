using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class ConsoleKey : MonoBehaviour
{
    [SerializeField]float downPos;
    [SerializeField] SpikeDoor spikeDoor;
    [SerializeField] GameObject consoleKey;
    public bool isHit;
    public CinemachineVirtualCamera[] vcam;
    public PlayerInput playerInput;


    private void Update()
    {
        if(isHit)
        {
            CameraMovement();
        }
    }
    public void KeyDown()
    {
        StartCoroutine(KeyDown_co());        
    }

    IEnumerator KeyDown_co()
    {
        while (transform.localPosition.y > downPos)
        {
            
            transform.localPosition += new Vector3(0f, -0.0001f, 0f);
            yield return null;
        }

        spikeDoor.OpenSpikeDoor();
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {            
            StartCoroutine(KeyDown_co());
            if(consoleKey.gameObject.name=="Console_KEY2")
            {
                isHit=true;
            }
        }
    }

    private void CameraMovement()
    {
        vcam[0].gameObject.SetActive(false);
        vcam[1].gameObject.SetActive(true);   
        playerInput.isLock=true;
        Invoke(nameof(CameraReset),2.0f);        
    }

    private void CameraReset()
    {
        isHit=false;
        playerInput.isLock=false;
        vcam[0].gameObject.SetActive(true);
        vcam[1].gameObject.SetActive(false);   
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlaceName : MonoBehaviour
{
    [SerializeField] Animator placeNameAnimator;
    [SerializeField] GameObject placeName;
    [SerializeField] GameObject HudUI;
    [SerializeField] Animator HudUIAnimator;
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            placeName.SetActive(true);      
            HudUIAnimator.SetBool("isEnter",true);      
            placeNameAnimator.SetBool("isExit",false);
            Invoke(nameof(ResetHUD),1.5f);
        }
        
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {            
            placeNameAnimator.SetBool("isExit",true);              
            Invoke(nameof(ResetName),1.5f);
        }
    }

    private void ResetHUD()
    {
        HudUI.SetActive(false);    
    }

    private void ResetName()
    {
        HudUI.SetActive(true);  
        placeName.SetActive(false);    
    }

}

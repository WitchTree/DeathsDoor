using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlaceName : MonoBehaviour
{
    [SerializeField] Animator placeNameAnimator;
    [SerializeField] Animator HudUIAnimator;
    [SerializeField] GameObject placeName;
    [SerializeField] GameObject HudUI;
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            placeName.SetActive(true);            
            placeNameAnimator.SetBool("isExit",false);
            HudUIAnimator.SetBool("isExit", true);
            Invoke(nameof(ResetHud), 1.2f);
        }
        
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {            
            placeNameAnimator.SetBool("isExit",true);
            Invoke(nameof(ResetName),1.5f);
            HudUI.SetActive(true);
        }
    }

    private void ResetName()
    {
        placeName.SetActive(false);    
    }

    private void ResetHud()
    {
        HudUI.SetActive(false);
    }

}

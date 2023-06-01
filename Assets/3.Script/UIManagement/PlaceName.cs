using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlaceName : MonoBehaviour
{
    [SerializeField] Animator placeNameAnimator;
    [SerializeField] GameObject placeName;
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            placeName.SetActive(true);            
            placeNameAnimator.SetBool("isExit",false);
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

    private void ResetName()
    {
        placeName.SetActive(false);    
    }

}

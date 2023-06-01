using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotKey : MonoBehaviour
{
    //door key
    [SerializeField] GameObject potIcon;

    //door direction
    [SerializeField] int keyNum = 0;

    //Material
    [SerializeField] Material glowMaterial;

    [SerializeField] EntranceHall entranceHall;

    public void KeyActive() 
    {
        potIcon.GetComponent<MeshRenderer>().material = glowMaterial;
        entranceHall.isDoorOpen[keyNum] = true;
    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Skill")) 
        {
            //항아리 부서지는 애니메이션

            //Pot key sphere 활성화
            transform.GetChild(1).gameObject.SetActive(true);

            //Key 머테리얼 변경
            KeyActive();
        }
    }
}

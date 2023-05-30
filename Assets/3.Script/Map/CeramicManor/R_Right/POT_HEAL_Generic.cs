using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_HEAL_Generic : MonoBehaviour
{
    public bool isPotKey = false;
    [SerializeField] SpikeDoor spikeDoor;

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Weapon"))
        {
            //pot 깨지는 애니메이션

            //spike door를 open할 키이고 잠금이 해제되어 있다면
            if (isPotKey && spikeDoor.isUnlock) 
            {
                //문 열기
                spikeDoor.OpenSpikeDoor();
            }
            else 
            {
                //pot 다시 붙기
            }
        }
    }
}

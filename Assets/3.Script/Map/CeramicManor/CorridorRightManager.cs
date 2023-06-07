using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorridorRightManager : MonoBehaviour
{
    [SerializeField] Mage mage;
    [SerializeField] SpikeDoor spikeDoor;

    bool isSpikedoorLock = false;

    private void Update()
    {
        if (mage.hp <= 0 && !isSpikedoorLock)
        {
            isSpikedoorLock = true;
            spikeDoor.OpenSpikeDoor();
        }
    }

    
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CorridorRightManager : MonoBehaviour
{
    [SerializeField] Mage mage;
    [SerializeField] SpikeDoor spikeDoor;

    private void Update()
    {
        if (mage.isDead)
        {
            spikeDoor.OpenSpikeDoor();
        }
    }
}

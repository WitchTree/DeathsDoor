using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ForestMotherTrigger : MonoBehaviour
{
    [SerializeField] SpikeDoor spikeDoor;
    [SerializeField] ForestMother forestMother;
    [SerializeField] int triggerNum;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (triggerNum.Equals(1))
            {
                spikeDoor.OpenSpikeDoor();
            }
            else
            {
                forestMother.StartAttack();
                spikeDoor.CloseSpikeDoor();
            }
        }
    }
}

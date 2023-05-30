using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CeramicManorManager : MonoBehaviour
{
    [SerializeField] GameObject[] floors;

    public void FloorChange(int currIndex, int nextIndex) 
    {
        floors[currIndex].SetActive(false);
        floors[nextIndex].SetActive(true);

        //플레이어 위치 옮기기
    }
}

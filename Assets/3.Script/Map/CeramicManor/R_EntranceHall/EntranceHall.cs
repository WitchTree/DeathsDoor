using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EntranceHall : MonoBehaviour
{
    //Door
    public bool[] isDoorOpen = new bool[2];
    float openSpeed = 0.1f;
    [SerializeField] Transform leftDoor;
    [SerializeField] Transform rightDoor;

    void Start() 
    {
        for (int i = 0; i < isDoorOpen.Length; i++) 
        {
            isDoorOpen[i] = false;
        }
    }

    void Update() 
    {
        if (isDoorOpen[0] && isDoorOpen[1]) 
        {
            OpenDoor();
        }
    }

    public void OpenDoor() 
    {
        isDoorOpen[0] = false; //update에서 코루틴 한번만 실행
        isDoorOpen[1] = false;
        StartCoroutine(OpenDoor_co());
    }

    IEnumerator OpenDoor_co() 
    {
        float time = 0f;
        while (leftDoor.localPosition.x > -0.0045f) 
        {
            leftDoor.localPosition -= new Vector3(openSpeed * Time.deltaTime, 0f, 0f);
            rightDoor.localPosition += new Vector3(openSpeed * Time.deltaTime, 0f, 0f);
            yield return null;
        }

        yield return new WaitForSeconds(0.3f);

        while (leftDoor.localPosition.x > -0.03f) 
        {
            leftDoor.localPosition -= new Vector3(openSpeed * Time.deltaTime * 0.8f, 0f, 0f);
            rightDoor.localPosition += new Vector3(openSpeed * Time.deltaTime * 0.8f, 0f, 0f);
            yield return null;
        }
    }
}

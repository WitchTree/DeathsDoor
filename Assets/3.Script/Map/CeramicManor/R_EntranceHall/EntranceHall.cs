using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EntranceHall : MonoBehaviour
{
    //Door
    float openSpeed = 0.1f;
    [SerializeField] Transform leftDoor;
    [SerializeField] Transform rightDoor;

    [Header("Keys")]
    [SerializeField] PotKey[] keys;

    [Header("Audio")]
    AudioSource audio;
    [SerializeField] AudioClip doorButton;

    private void Start()
    {
        audio = GetComponent<AudioSource>();
    }

    void Update()
    { 
        if (keys[0].isActive && keys[1].isActive) 
        {
            OpenDoor();
        }
    }

    public void OpenDoor() 
    {
        keys[0].isActive = false; //update에서 코루틴 한번만 실행
        keys[1].isActive = false;
        StartCoroutine(OpenDoor_co());
    }

    IEnumerator OpenDoor_co() 
    {
        audio.PlayOneShot(doorButton);
        yield return new WaitForSeconds(2f);
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

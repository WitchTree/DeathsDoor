using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TopFloor : MonoBehaviour
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
        if (keys[0].isActive && keys[1].isActive && keys[2].isActive && keys[3].isActive)
        {
            OpenDoor();
        }
    }

    public void OpenDoor()
    {
        //Play just one time in update callback method
        for (int i = 0; i < keys.Length; i++)
        {
            keys[i].isActive = false;
        }
        StartCoroutine(OpenDoor_co());
    }

    IEnumerator OpenDoor_co()
    {
        yield return new WaitForSeconds(2f);
        audio.PlayOneShot(doorButton);
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

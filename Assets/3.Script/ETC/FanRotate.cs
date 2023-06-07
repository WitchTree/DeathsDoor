using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FanRotate : MonoBehaviour
{
    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;
    // Update is called once per frame

    private void Awake()
    {
        audio = GetComponent<AudioSource>();

    }
    void Update()
    {
        transform.Rotate(0, 130f * Time.deltaTime, 0);
    }
}

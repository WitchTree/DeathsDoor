using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager01 : MonoBehaviour
{
    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;
    // Start is called before the first frame update
    void Start()
    {
        audio = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    
}

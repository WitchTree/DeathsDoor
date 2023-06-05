using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TheGroveOfSpirits : MonoBehaviour
{
    [Header("Audio(BGM, ForestMotherBGM)")]
    AudioSource audio;
    [SerializeField] AudioClip[] audioClips;


    private void Start()
    {
        audio = GetComponent<AudioSource>();
        audio.volume = 0.5f;
    }

    public void StartDefaultBGM()
    {
        audio.clip = audioClips[0];
        audio.Play();
    }

    public void StartForestMotherBGM()
    {
        audio.Stop();
        audio.clip = audioClips[1];
        audio.volume = 1f;
        audio.Play();
    }

    public void StopForestMotherBGM()
    {
        audio.Stop();
        audio.clip = audioClips[0];
        audio.volume = 0.5f;
        audio.Play();
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PotKey : MonoBehaviour
{
    //door key
    [SerializeField] GameObject potIcon;

    //door direction
    [SerializeField] int keyNum = 0;

    //Material
    [SerializeField] Material glowMaterial;

    //Mesh Renderer from child
    MeshRenderer meshRenderer;

    [HideInInspector] public bool isActive = false;

    //Audio
    AudioSource audio;
    [SerializeField] AudioClip potDamage;

    private void Awake()
    {
        audio = GetComponent<AudioSource>();
        meshRenderer = GetComponentInChildren<MeshRenderer>();
    }

    public void KeyActive() 
    {
        potIcon.GetComponent<MeshRenderer>().material = glowMaterial;
        isActive = true;
    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Skill")) 
        {
            //Broken pot audio
            audio.PlayOneShot(potDamage, 0.5f);

            //Pot key sphere active
            transform.GetChild(1).gameObject.SetActive(true);

            //Change key material
            KeyActive();
        }
    }

}

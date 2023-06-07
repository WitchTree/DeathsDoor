using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FireLamp : MonoBehaviour
{
    public GameObject fire;
    public GameObject fire_Upper;
    public bool isFire = false;
    public bool fireCheck = false;

    public AudioSource audio;
    public AudioClip setFire;
    private static FireLamp Instance;
    public static FireLamp instance
    {
        get
        {
            if (Instance == null)
            {
                Instance = FindObjectOfType<FireLamp>();
            }
            return Instance;
        }
    }
    private void Start()
    {
        audio = GetComponent<AudioSource>();
    }

    private void Update()
    {       
        if (isFire)
        {
            fire_Upper.transform.Rotate(new Vector3(0, 30f, 0) * Time.deltaTime);

        }

    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Skill"))
        {
            if (other.gameObject.name == "Arrow (Clone)")
            {
                if (Weapon_Bow.instance.fireCheck)
                {
                    fire.SetActive(true);
                    isFire = true;

                    audio.PlayOneShot(setFire);

                    return;
                }


            }
            else
            {
                fire.SetActive(true);
                isFire = true;

                audio.PlayOneShot(setFire);
            }
        }
    }

}

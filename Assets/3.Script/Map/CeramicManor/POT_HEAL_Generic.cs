using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_HEAL_Generic : MonoBehaviour
{
    public bool isPotKey = false;
    [SerializeField] SpikeDoor spikeDoor;

    //original pos
    Vector3[] smashedOriginalPos = new Vector3[14];
    Vector3[] smashedOriginalRot = new Vector3[14];

    //smashed 
    Vector3 attackPos;
    Rigidbody[] smashed = new Rigidbody[14];

    //Colliders
    Collider collider;

    //Audio
    AudioSource audio;
    [SerializeField] AudioClip potBreak;
    [SerializeField] AudioClip potReset;

    //Player
    PlayerState playerState;


    private void Start()
    {
        collider = GetComponent<Collider>();
        audio = GetComponent<AudioSource>();
        playerState = FindObjectOfType<PlayerState>();

        smashed = transform.GetChild(1).GetComponentsInChildren<Rigidbody>();

        for (int i = 0; i < transform.GetChild(1).childCount; i++)
        {
            smashedOriginalPos[i] = transform.GetChild(1).GetChild(i).transform.localPosition;
            smashedOriginalRot[i] = transform.GetChild(1).GetChild(i).transform.localEulerAngles;
        }
    }

    void Initialize()
    {
        collider.enabled = true;

        transform.GetChild(0).gameObject.SetActive(true);
    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Skill") || other.CompareTag("Weapon"))
        {
            //Audio
            audio.PlayOneShot(potBreak);

            //Broken pot direction
            attackPos = transform.position - other.gameObject.transform.position;

            StartCoroutine(Pot_co());
        }
    }

    public void BreakPot()
    {
        //pot body disactive
        transform.GetChild(0).gameObject.SetActive(false);

        playerState.SkillCountUp();

        //pot break
        for (int i = 0; i < smashed.Length; i++)
        {
            smashed[i].isKinematic = false;
            //smashed[i].AddForce(attackPos * 200f);
        }

        //Collider disabled
        collider.enabled = false;
        
        if (isPotKey && spikeDoor.isUnlock)
        {
            //Open door
            spikeDoor.OpenSpikeDoor();
        }
    }

    public void ResetPot()
    {
        audio.PlayOneShot(potReset);
        StartCoroutine(ResetPosToOriginal_co());
    }

    IEnumerator ResetPosToOriginal_co()
    {
        //Modify pot isKinematic 
        for (int i = 0; i < smashed.Length; i++)
        {
            //smashed[i].useGravity = false;
            smashed[i].isKinematic = true;
        }

        float maxDist = 0f;
        int maxDistIndex = 15;
        for (int i = 0; i < smashed.Length; i++)
        {
            if ((smashed[i].transform.localPosition - smashedOriginalPos[i]).sqrMagnitude > maxDist)
            {
                maxDist = (smashed[i].transform.localPosition - smashedOriginalPos[i]).sqrMagnitude;
                maxDistIndex = i;
            }
        }

        while ((smashed[maxDistIndex].transform.localPosition - smashedOriginalPos[maxDistIndex]).sqrMagnitude > 0.000000001f)
        {
            for (int i = 0; i < smashed.Length; i++)
            {
                //position
                smashed[i].transform.localPosition = Vector3.MoveTowards(smashed[i].transform.localPosition, smashedOriginalPos[i], 0.01f * Time.deltaTime);
                
                //rotation
                smashed[i].transform.localEulerAngles = smashedOriginalRot[i];
            }
            //time += Time.deltaTime;

            

            yield return null;
        }
            
        //Add Effect
        
        Initialize();
    }

    IEnumerator Pot_co()
    {
        BreakPot();
        yield return new WaitForSeconds(20f);
        ResetPot();
    }
}

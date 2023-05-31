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
    Collider[] colliders = new Collider[2];

    private void Start()
    {
        colliders = GetComponents<Collider>();

        smashed = transform.GetChild(1).GetComponentsInChildren<Rigidbody>();

        for (int i = 0; i < transform.GetChild(1).childCount; i++)
        {
            smashedOriginalPos[i] = transform.GetChild(1).GetChild(i).transform.localPosition;
            smashedOriginalRot[i] = transform.GetChild(1).GetChild(i).transform.localEulerAngles;
        }
    }

    void Initialize()
    {
        colliders[0].enabled = true;
        colliders[1].enabled = true;

        transform.GetChild(0).gameObject.SetActive(true);
    }
        

    private void Update()
    {
        //smashed[0].transform.localPosition = Vector3.MoveTowards(smashed[0].transform.localPosition, new Vector3(-0.0531f, 0f, 0f), 0.01f * Time.deltaTime);

    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Skill"))
        {
            //깨질 때 힘줄 방향
            attackPos = transform.position - other.gameObject.transform.position;
            Destroy(other.gameObject);

            StartCoroutine(Pot_co());
        }
    }

    public void BreakPot()
    {
        //pot body 비활성화
        transform.GetChild(0).gameObject.SetActive(false);

        //pot 깨지기
        for (int i = 0; i < smashed.Length; i++)
        {
            smashed[i].isKinematic = false;
            smashed[i].AddForce(attackPos * 500f);
        }

        //Collider 끄기
        colliders[0].enabled = false;
        colliders[1].enabled = false;

        //spike door를 open할 키이고 잠금이 해제되어 있다면
        if (isPotKey && spikeDoor.isUnlock)
        {
            //문 열기
            spikeDoor.OpenSpikeDoor();
        }
        else
        {
            //pot 다시 붙기
        }
    }

    public void ResetPot()
    {
        StartCoroutine(ResetPosToOriginal_co());
    }

    IEnumerator ResetPosToOriginal_co()
    {
        //pot isKinematic 수정
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
            
        //이펙트 추가
        
        //다시 초기화
        Initialize();
    }

    IEnumerator Pot_co()
    {
        BreakPot();
        yield return new WaitForSeconds(20f);
        ResetPot();
    }
}

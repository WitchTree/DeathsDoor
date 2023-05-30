using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class POT_HEAL_Generic : MonoBehaviour
{
    public bool isPotKey = false;
    [SerializeField] SpikeDoor spikeDoor;

    //original pos
    Vector3[] smashedOriginalPos = new Vector3[14];


    //smashed 
    Rigidbody[] smashed = new Rigidbody[14];

    private void Start()
    {
        smashed = transform.GetChild(1).GetComponentsInChildren<Rigidbody>();

        for (int i = 0; i < transform.GetChild(1).childCount; i++)
        {
            smashedOriginalPos[i] = transform.GetChild(1).GetChild(i).transform.localPosition;
        }
        
    }

    void OnTriggerEnter(Collider other) 
    {
        if (other.CompareTag("Weapon"))
        {
            BreakPot();
        }
    }

    public void BreakPot()
    {
        //pot body 비활성화
        transform.GetChild(0).gameObject.SetActive(false);

        //pot 깨지기
        for (int i = 0; i < smashed.Length - 1; i++)
        {
            smashed[i].isKinematic = false;
        }

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
        StartCoroutine(ResetPosToOriginal());
    }

    IEnumerator ResetPosToOriginal()
    {
        //pot isKinematic 수정
        for (int i = 0; i < smashed.Length - 1; i++)
        {
            smashed[i].isKinematic = true;
            smashed[i].useGravity = false;
        }

        float time = 0f;
        while (time < 5f)
        {
            for (int i = 0; i < smashed.Length; i++)
            {
                Debug.Log("move");
                Vector3.MoveTowards(smashed[i].transform.localPosition, smashedOriginalPos[i], 5f * Time.deltaTime);
            }
            time += Time.deltaTime;
            yield return null;
        }
    }
}

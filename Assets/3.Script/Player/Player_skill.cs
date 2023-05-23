using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_skill : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;
    private Animator ani;
    

    public Transform weaponPivot; //다른 클래스에서 불러올 수 있음
    public GameObject arrow_prefab;//프리팹한 화살
    public GameObject setparent_player;//setparent 즉 플레이어 받기

    public GameObject arrow;
    public GameObject bow;

    public bool isSkill = false;


    void Start()
    {
        ani = GetComponent<Animator>();
        bow = GetComponent<GameObject>();
        
    }
    private void Update()
    {
        
        Skill();
    }
    public void Skill()
    {
        if (playerInput.isSkill_start  && !isSkill)
        {
            
            isSkill = true;
            ani.SetBool("Bow", isSkill);
            StartCoroutine("Wait_co");     
        }
        if (playerInput.isSkill_end && isSkill)
        {
            isSkill = false;
            ani.SetBool("Bow", isSkill);
            StopCoroutine("Wait_co");
        }
    }

    private IEnumerator Wait_co()
    {
        yield return new WaitForSeconds(0.7f);

        arrow = Instantiate(arrow_prefab, weaponPivot.position, weaponPivot.rotation);
        arrow.transform.SetParent(setparent_player.transform);
        
    }

    private void Ain_Invoke()
    {
        if (isSkill && playerInput.isSkill_start)
        {
            arrow = Instantiate(arrow_prefab, weaponPivot.position, weaponPivot.rotation);
            arrow.transform.SetParent(setparent_player.transform);
        }

        ////Instantiate(복사할 오브젝트 원본, 복사할 위치, 복사할 회전값
        //arrow = Instantiate(arrow_prefab, weaponPivot.position, weaponPivot.rotation);
        //arrow.transform.SetParent(setparent_player.transform);
        ////arrow.transform.SetParent(setparent_player.transform, false);//false는 상대적인 부모를 가져옴 즉 스케일 크기 맞추기 하지만 난 플레이어 크기를 30 키운 상태라 
        ////false를 쓰면 화살이 30배 커져 버림
    }

}

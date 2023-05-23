using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_skill : MonoBehaviour
{
    [SerializeField] PlayerInput playerInput;
    private Animator ani;
    

    public Transform weaponPivot; //�ٸ� Ŭ�������� �ҷ��� �� ����
    public GameObject arrow_prefab;//�������� ȭ��
    public GameObject setparent_player;//setparent �� �÷��̾� �ޱ�

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

        ////Instantiate(������ ������Ʈ ����, ������ ��ġ, ������ ȸ����
        //arrow = Instantiate(arrow_prefab, weaponPivot.position, weaponPivot.rotation);
        //arrow.transform.SetParent(setparent_player.transform);
        ////arrow.transform.SetParent(setparent_player.transform, false);//false�� ������� �θ� ������ �� ������ ũ�� ���߱� ������ �� �÷��̾� ũ�⸦ 30 Ű�� ���¶� 
        ////false�� ���� ȭ���� 30�� Ŀ�� ����
    }

}

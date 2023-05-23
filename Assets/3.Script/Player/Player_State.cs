using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_State : MonoBehaviour
{
    public int skill = 4; // 스킬 수
    public int life = 4;
    public int seed = 2;//씨앗 

    public PlayerInput playerInput;
    public Bat bat;
  
    private Animator ani;
    public bool isSuffer = false;


    MeshRenderer mesh;
    Material mat;


    private void Awake()
    {
        playerInput = FindObjectOfType<PlayerInput>();
        bat = FindObjectOfType<Bat>();
    }

    private void Start()
    {
        ani = GetComponent<Animator>();
        mesh = GetComponent<MeshRenderer>();
        mat = mesh.material;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("ETC") && !isSuffer && !bat.isAttacking)
        {
            life--;
            Debug.Log("목숨");
            Debug.Log(life);

            mat.color = new Color(255,255, 255);//충돌시 색 변경을 위해 넣는데 안 먹혀서.. 나중에 수정할게여..

            if (life <= 0)
            {       
                ani.SetTrigger("Death");
            }
            else
            {
                StartCoroutine("Suffer_co");
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("ETC") && isSuffer)// 추후에 tag 이름 바꿔야함 그 적 인식 영역이 아니라 몬스터와 직접 충돌해야해서 나중에 상호작용? 할 때 콜라이더 다시 넣고 tag 걸어야 할듯
        {
            mat.color = new Color(1, 1, 1);
        }
    }

    private IEnumerator Suffer_co()//이동 입력 받지 않게 할 예정 근데 정확히 무슨 코드를 써야할 지 몰라서 일단 움직임 스크립트에서 제한하고 나중에 방법 찾으면 수정
    {
        ani.SetTrigger("Suffer");
        isSuffer = true;
      

        ani.SetBool("Suffer", isSuffer);
        yield return new WaitForSeconds(1.5f);

        isSuffer = false;
        ani.SetBool("Suffer", isSuffer);
    }

}

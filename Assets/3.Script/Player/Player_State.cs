using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player_State : MonoBehaviour
{
    public int skill = 4; // ��ų ��
    public int life = 4;
    public int seed = 2;//���� 

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
            Debug.Log("���");
            Debug.Log(life);

            mat.color = new Color(255,255, 255);//�浹�� �� ������ ���� �ִµ� �� ������.. ���߿� �����ҰԿ�..

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
        if (other.CompareTag("ETC") && isSuffer)// ���Ŀ� tag �̸� �ٲ���� �� �� �ν� ������ �ƴ϶� ���Ϳ� ���� �浹�ؾ��ؼ� ���߿� ��ȣ�ۿ�? �� �� �ݶ��̴� �ٽ� �ְ� tag �ɾ�� �ҵ�
        {
            mat.color = new Color(1, 1, 1);
        }
    }

    private IEnumerator Suffer_co()//�̵� �Է� ���� �ʰ� �� ���� �ٵ� ��Ȯ�� ���� �ڵ带 ����� �� ���� �ϴ� ������ ��ũ��Ʈ���� �����ϰ� ���߿� ��� ã���� ����
    {
        ani.SetTrigger("Suffer");
        isSuffer = true;
      

        ani.SetBool("Suffer", isSuffer);
        yield return new WaitForSeconds(1.5f);

        isSuffer = false;
        ani.SetBool("Suffer", isSuffer);
    }

}

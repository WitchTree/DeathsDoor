using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Skill_fill : MonoBehaviour
{
    public PlayerController player;
    private bool isPlay = false;
    private float delay = 3f;
    public MeshRenderer meshRenderer;


    private void Awake()
    {
        TryGetComponent(out meshRenderer);
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && Input.GetKeyDown(KeyCode.Mouse0))// ���߿� �������� �ϼ��ϸ� �� ���� �������� �־�� ��������� ����
        {
            player.skill++;
            if (player.skill > 4)
            {
                player.skill = 4;
            }
            Debug.Log(player.skill);

            StartCoroutine(Skill_Fill_co());
        }
    }

    private IEnumerator Skill_Fill_co()
    {
        meshRenderer.enabled = false;
        //gameObject.SetActive(false);
        yield return new WaitForSeconds(delay);
        Debug.Log(0);
        meshRenderer.enabled = true;
        //gameObject.SetActive(true);
    }
}

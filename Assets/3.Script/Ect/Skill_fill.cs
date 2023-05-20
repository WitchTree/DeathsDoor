using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Skill_fill : MonoBehaviour
{
    public PlayerInput player;
    public Player_State player_state;
    private float delay = 3f;
    private MeshRenderer meshRenderer;


    private void Awake()
    {
        TryGetComponent(out meshRenderer);
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && player.isLight)// 나중에 물리공격 완성하면 그 공격 범위내에 있어야 사라지도록 수정
        {
            player_state.skill++;
            if (player_state.skill > 4)
            {
                player_state.skill = 4;
            }
            Debug.Log(player_state.skill);

            StartCoroutine(Skill_Fill_co());
        }
    }

    private IEnumerator Skill_Fill_co()
    {
        meshRenderer.enabled = false;;
        yield return new WaitForSeconds(delay);
        meshRenderer.enabled = true;
    }
}

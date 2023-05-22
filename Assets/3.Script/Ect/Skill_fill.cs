using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Skill_fill : MonoBehaviour
{
    public PlayerInput playerInput;
    public Player_State playerState;
    private float delay = 3f;
    private MeshRenderer meshRenderer;

    private void Awake()
    {
        TryGetComponent(out meshRenderer);
        playerInput = FindObjectOfType<PlayerInput>();
        playerState = FindObjectOfType<Player_State>();
    }

    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Player") && playerInput.isLight)// 나중에 물리공격 완성하면 그 공격 범위내에 있어야 사라지도록 수정
        {
            playerState.skill++;
            if (playerState.skill > 4)
            {
                playerState.skill = 4;
            }
            Debug.Log(playerState.skill);

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

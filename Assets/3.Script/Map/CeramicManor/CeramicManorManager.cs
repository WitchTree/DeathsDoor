using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CeramicManorManager : MonoBehaviour
{
    [SerializeField] Transform playerSpawnPoint;
    [SerializeField] Transform player;

    [Header("Fade In")]
    float fadeInTime = 1f;
    float timeFadeIn = 0f;
    [SerializeField] Image fadeInImg;

    private void Start()
    {
        player.position = playerSpawnPoint.position;
        StartCoroutine(FadeIn());
    }

    IEnumerator FadeIn()
    {
        fadeInImg.enabled = true;
        Color imgColor = fadeInImg.color;
        imgColor.a = 1f;

        while (imgColor.a > 0f)
        {
            timeFadeIn += Time.deltaTime / fadeInTime;
            imgColor.a = Mathf.Lerp(1f, 0f, timeFadeIn);
            fadeInImg.color = imgColor;
            yield return null;
        }
        fadeInImg.enabled = false;
    }
}

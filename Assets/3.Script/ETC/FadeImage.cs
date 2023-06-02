using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeImage : MonoBehaviour
{
    float fadeOutTime = 1.5f;
    float timeFadeOut = 0f;

    Image sceneLoadingImg;

    [SerializeField] StartScene startScene;

    private void Start()
    {
        sceneLoadingImg = GetComponent<Image>();
    }

    public void FadeOut()
    {
        StartCoroutine(FadeOut_co());
    }

    IEnumerator FadeOut_co()
    {
        sceneLoadingImg.enabled = true;
        Color imgColor = sceneLoadingImg.color;
        imgColor.a = 0f;
        while (imgColor.a < 1f)
        {
            timeFadeOut += Time.deltaTime / fadeOutTime;
            imgColor.a = Mathf.Lerp(0f, 1f, timeFadeOut);
            sceneLoadingImg.color = imgColor;
            yield return null;
        }
        startScene.StartSceneLoad();
    }
}

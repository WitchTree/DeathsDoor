using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class SceneChange : MonoBehaviour
{
    float fadeTime = 1.5f;
    float timeFadeIn = 0f;
    float timeFadeOut = 0f;

    [SerializeField] string sceneName = "";
    [SerializeField] Image sceneLoadingImg;

    private void Start()
    {
        StartCoroutine(FadeIn());
    }

    public void ChangeScene()
    {
        StartCoroutine(FadeOut());
    }

    IEnumerator LoadScene(string sceneName)
    {
        AsyncOperation asyncOper = SceneManager.LoadSceneAsync(sceneName);

        Color imgColor = sceneLoadingImg.color;
        imgColor.a = 1f;
        sceneLoadingImg.enabled = true;
        
        while(!asyncOper.isDone)
        {
            Debug.Log(string.Format("Scene Load: {0}", asyncOper.progress));
            yield return null;
        }
    }

    IEnumerator FadeOut()
    {
        sceneLoadingImg.enabled = true;
        Color imgColor = sceneLoadingImg.color;
        imgColor.a = 0f;


        while (imgColor.a < 1f)
        {
            timeFadeOut += Time.deltaTime / fadeTime;
            imgColor.a = Mathf.Lerp(0f, 1f, timeFadeOut);
            sceneLoadingImg.color = imgColor;
            yield return null;
        }
        sceneLoadingImg.enabled = false;
        StartCoroutine(LoadScene(sceneName));
    }

    IEnumerator FadeIn()
    {
        sceneLoadingImg.enabled = true;
        Color imgColor = sceneLoadingImg.color;
        imgColor.a = 1f;

        while (imgColor.a > 0f)
        {
            timeFadeIn += Time.deltaTime / fadeTime;
            imgColor.a = Mathf.Lerp(1f, 0f, timeFadeIn);
            sceneLoadingImg.color = imgColor;
            yield return null;
        }
        sceneLoadingImg.enabled = false;
    }

    //timeFadeIn, timeFadeOut에 초기화 없어서 여러번 하면 오류날수도
    //빈 오브젝트인 SceneManager와 Canvas의 Image 필요
}

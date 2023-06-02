using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class StartScene : MonoBehaviour
{
    [SerializeField] string sceneName = "";

    public void StartSceneLoad()
    {
        StartCoroutine(LoadScene_co(sceneName));
    }


    IEnumerator LoadScene_co(string sceneName)
    {
        AsyncOperation asyncOper = SceneManager.LoadSceneAsync(sceneName);

        while (!asyncOper.isDone)
        {
            Debug.Log(string.Format("Scene Load: {0}", asyncOper.progress));
            yield return null;
        }
    }
}

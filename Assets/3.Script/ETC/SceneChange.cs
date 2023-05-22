using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class SceneChange : MonoBehaviour
{
    float fadeInTime = 1f;
    float fadeOutTime = 1.5f;
    float timeFadeIn = 0f;
    float timeFadeOut = 0f;

    [SerializeField] string sceneName = "";
    [SerializeField] Image sceneLoadingImg;

    [SerializeField] Transform player;
    [SerializeField] Transform PEndPos;
    [SerializeField] Transform PStartPos;
    [SerializeField] ShortcutDoor shortcutDoor;

    public Animator playerAni;

    bool isWalk = true;
     

    private void Start()
    {
        playerAni = player.GetComponent<Animator>();

        StartCoroutine(FadeIn());
        StartCoroutine(PlayerAppear());
        shortcutDoor.InitOpen();
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
            timeFadeOut += Time.deltaTime / fadeOutTime;
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
            timeFadeIn += Time.deltaTime / fadeInTime;
            imgColor.a = Mathf.Lerp(1f, 0f, timeFadeIn);
            sceneLoadingImg.color = imgColor;
            yield return null;
        }
        sceneLoadingImg.enabled = false;

        shortcutDoor.CloseFromInward();
    }

    IEnumerator PlayerAppear()
    {
        player.position = PEndPos.position;
        player.LookAt(PStartPos);

        //�÷��̾� �Է� ����

        //�÷��̾� �ִϸ��̼� ���
        while (player.position.z > PStartPos.position.z)
        {
            playerAni.SetBool("Run", true);
            player.position += new Vector3(0f, 0f, -0.02f);
            yield return null;
        }

        player.position = PStartPos.position;
        player.GetComponent<Animator>().SetBool("Run", false);
    }

    //timeFadeIn, timeFadeOut�� �ʱ�ȭ ��� ������ �ϸ� ����������
    //�� ������Ʈ�� SceneManager�� Canvas�� Image �ʿ�
}

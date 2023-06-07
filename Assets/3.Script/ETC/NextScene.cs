using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class NextScene : MonoBehaviour
{
    public PlayerController playerController;
    public GameObject player;
    public Animator playerAnimator;
    public PlayerInput playerInput;
    public Vector3 firstPoint;
    public Vector3 secondPoint;
   

    public GameObject firstPointObject;
    public GameObject secondPointObject;    
    public bool isFirst;
    public bool isSecond;
    public CinemachineVirtualCamera[] vcam;
    public Volume globalVolume;
    public Bloom globalBloom;
    public GameObject outroImage;
    // Start is called before the first frame update
    void Start()
    {
        firstPoint =firstPointObject.transform.position;
        secondPoint=secondPointObject.transform.position;       
        globalVolume.profile.TryGet(out globalBloom); 
    }

    // Update is called once per frame
    private void Update() {
        if(isFirst)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, firstPoint, 1.5f* Time.deltaTime);
            player.gameObject.transform.LookAt(firstPoint);
            playerAnimator.SetBool("Run",false);
            playerAnimator.SetBool("Idle",false);
            playerAnimator.SetBool("FakeRun",true);
            playerController.speed = 0;     
            if (player.gameObject.transform.position==firstPoint)
            {
                PlayerMovement2();
                vcam[0].gameObject.SetActive(false);
                vcam[1].m_Lens.NearClipPlane=-7.5f;
                vcam[1].gameObject.SetActive(true);    
            }
        }

        if(isSecond)
        {
            player.gameObject.transform.position = Vector3.MoveTowards(player.gameObject.transform.position, secondPoint, 1.5f* Time.deltaTime);
            player.gameObject.transform.LookAt(secondPoint);
            playerAnimator.SetBool("Run",false);
            playerAnimator.SetBool("Idle",false);
            playerAnimator.SetBool("FakeRun",true);
            playerController.speed = 0;   
            
        }
    }

    private void PlayerMovement2()
    {
        isFirst=false;
        isSecond=true;
        Invoke(nameof(LightEffect),0.7f);  
    }

    private void LightEffect()
    {
        StartCoroutine("Light_Co");
        outroImage.SetActive(true);
        Invoke(nameof(SceneMovement),2.9f);  
    }

    IEnumerator Light_Co()
    {    
        float f;    
        for(f=0.005f;f<=1f;f+=0.005f)
        {       
            globalBloom.scatter.value=f;
            yield return new WaitForSeconds(0.01f);
        }
    }

    private void SceneMovement()
    {
        playerAnimator.SetBool("FakeRun",false);
        playerController.speed = 4;   
        playerInput.isLock=false;
        SceneManager.LoadScene("1.Scene/03.Ceramic_Manor");
    }


}

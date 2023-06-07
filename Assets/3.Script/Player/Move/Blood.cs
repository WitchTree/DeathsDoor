using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Blood : MonoBehaviour
{
    public ParticleSystem blood;
    public GameObject bloodstain;
    bool isHurt = false;
    Animator player_ani;
    // Start is called before the first frame update
    void Start()
    {
        isHurt = false;
        TryGetComponent(out player_ani);
        blood.Stop();
    }

    // Update is called once per frame
    void Update()
    {
        if (player_ani.GetCurrentAnimatorStateInfo(0).IsName("Hit_back"))
        {
            isHurt = true;
            blood.transform.position = transform.position;
            Instantiate(bloodstain, blood.transform.position, Quaternion.identity);
            blood.Play();
        }
        else
        {
            isHurt = false;
            blood.Stop();
        }
    }
}
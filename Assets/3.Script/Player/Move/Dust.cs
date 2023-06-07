using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dust : MonoBehaviour
{
    public ParticleSystem dust;
    bool isOn = false;
    Animator player_ani;
    void Start()
    {
        dust.Stop();
        isOn = false;
        TryGetComponent(out player_ani);
    }

    // Update is called once per frame
    void Update()
    {
        if(player_ani.GetCurrentAnimatorStateInfo(0).IsName("Run"))//조건 값만 바꾸면 될듯?
        {
            isOn = true;
            dust.transform.position = transform.position;
            dust.Play();

        }
        else
        {
            isOn = false;
            dust.Stop();
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    public float speed = 2f; //이동속도
    public float roll_Dis = 10f;//구르는 거리
    public float selDelay = 1f;
    private float delay = 0.4f;

    public GameObject labberPos;

    private Rigidbody player_R;
    private Animator ani;
    Sword sword;

    //행동
    public bool isRun = false;
    public bool isRoll = false;
    public bool isIdle = false;
    public bool isAtk = false;
    public bool isClimb = false;

    private float closeDistance = 0.25f;


    //[SerializeField] private GameObject cursor;

    PlayerOnDamage playerDamage;
    [SerializeField] PlayerInput playerinput;
    [SerializeField] Camera main;
    void Start()
    {
        player_R = GetComponent<Rigidbody>();
        ani = GetComponent<Animator>();
        playerDamage = GetComponent<PlayerOnDamage>();
    }

    public void ChangeLayersRecursively()
    {
        foreach (Transform child in transform)
        {
            child.gameObject.layer = 6;
        }
    }


    private void FixedUpdate()
    {
        Lookat();
    }
    public void Lookat()
    {
        if (!isRoll)
        {
            Ray cameraRay = main.ScreenPointToRay(Input.mousePosition);
            Vector3 hitpoint = Vector3.zero;
            if (Physics.Raycast(cameraRay, out RaycastHit h))
            {
                hitpoint = h.point;
                hitpoint.y = transform.position.y;
            }
            Vector3 offset = hitpoint - transform.position;
            float sqrLen = offset.sqrMagnitude;
            if (!isRun && (sqrLen > closeDistance * closeDistance))
            {
                if (playerinput.isLight)
                {
                    transform.LookAt(hitpoint);
                }
                if (playerinput.isStrong)
                {
                    transform.LookAt(hitpoint);
                }
                if (playerinput.isSkill_start)
                {
                    transform.LookAt(hitpoint);
                }
            }
        }
    }

}
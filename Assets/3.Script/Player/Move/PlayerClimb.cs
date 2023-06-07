using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerClimb : MonoBehaviour
{
    private Animator ani;

    public bool isClimb = false;
    public bool isClimbing = false;
    public bool climbCheck = false;

    public PlayerInput playerinput;

    void Start()
    {
        playerinput = GetComponent<PlayerInput>();
        ani = GetComponent<Animator>();
    }
    private void Update()
    {
        Climb_MoveKey();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Ladder_Top") && isClimb)
        {
            ani.SetTrigger("Climb_Top");
            ani.SetBool("Climb_Up", isClimb);
            this.transform.Translate(0, 1f, 0.03f);
            isClimb = false;
            climbCheck = false;
            playerinput.isLock = false;
        }
        if (other.CompareTag("Ladder_Bottom") && isClimb && Input.GetKey(KeyCode.S))
        {
            ani.SetTrigger("Climb_Bottom");
            isClimb = false;
            climbCheck = false;
            ani.SetBool("Climb_Down", isClimb);
            Physics.gravity = new Vector3(0, 0, 0);
            playerinput.isLock = false;
            Debug.Log("¹Ù´Ú¿¡ ´ê¾Ò´Âµ¥ ¿Ö ¾ÈµÇ´Â °Å¾ß Â¯³ª°Ô");
        }
    }
    private void OnTriggerStay(Collider other)
    {
        if (other.CompareTag("Ladder") && playerinput.isInteraction && !isClimb)
        {
            if (!climbCheck)
            {
                transform.position = other.gameObject.GetComponentsInParent<Transform>()[1].position;
                transform.rotation = other.gameObject.GetComponentsInParent<Transform>()[1].rotation;
                this.transform.Translate(0, 0.1f, 0);


                isClimb = true;
                if (isClimb)
                {
                    playerinput.isLock = false;
                    ani.SetTrigger("Climb");
                    climbCheck = true;
                }
            }
        }
    }

    private void Climb_MoveKey()
    {
        if (isClimb)
        {
            Debug.Log("»çÅ¸¸® Å½");
            isClimbing = false;
            ani.SetBool("Climb_Up", isClimbing);
            ani.SetBool("Climb_Down", isClimbing);
            Physics.gravity = new Vector3(0, 0, 0);
            if (Input.GetKey(KeyCode.W))
            {
                isClimbing = true;
                this.transform.Translate(0, 2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Up", isClimbing);
            }
            if (Input.GetKey(KeyCode.S))
            {
                isClimbing = true;
                this.transform.Translate(0, -2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Down", isClimbing);
            }
            //else
            //{
            //    ani.SetTrigger("Climb");
            //}
        }
        else
        {
            Physics.gravity = new Vector3(Physics.gravity.x, -9.81f, Physics.gravity.z);
        }
    }
}

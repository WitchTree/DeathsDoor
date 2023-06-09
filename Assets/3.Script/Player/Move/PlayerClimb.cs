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
            this.transform.Translate(0, 2f, 0.2f);
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
            
            Physics.gravity = new Vector3(0, 0, 0);
            if (Input.GetKey(KeyCode.W))
            {
                isClimbing = true;
                this.transform.Translate(0, 2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Up", true);
            }
            else if (Input.GetKey(KeyCode.S))
            {
                isClimbing = true;
                this.transform.Translate(0, -2 * Time.deltaTime, 0);
                ani.SetBool("Climb_Down", true);
            }
            else
            {
                isClimbing = false;
                ani.SetBool("Climb_Up", false);
                ani.SetBool("Climb_Down", false);
            }
            
        }
        else
        {
            Physics.gravity = new Vector3(Physics.gravity.x, -9.81f, Physics.gravity.z);
        }
    }
}

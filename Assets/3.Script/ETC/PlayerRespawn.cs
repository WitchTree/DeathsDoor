using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerRespawn : MonoBehaviour
{
    public Vector3 followPosition;
    public int followDelay;
    public Transform parent;
    public Queue<Vector3> parentPosition;
    public bool isFall=false;

    void Awake()
    {
        parentPosition=new Queue<Vector3>();
    }
    void Update()
    {
        Watch();
        Follow();
        Respawn();
    }

    private void Watch()
    {
        if(!parentPosition.Contains(parent.position))
        {
            parentPosition.Enqueue(parent.position);
        }

        if(parentPosition.Count>followDelay)
        {
            followPosition=parentPosition.Dequeue();
        }

        else if(parentPosition.Count<followDelay)
        {
            followPosition=parent.position;
        }
    }

    private void Follow()
    {
        transform.position=followPosition;
    }

    private void Respawn()
    {
        if(isFall==true)
        {
            parent.position=followPosition; 
            parent.transform.position = new Vector3(followPosition.x, followPosition.y + 0.3f, followPosition.z);           
        }
    }
}

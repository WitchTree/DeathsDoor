using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCursor : MonoBehaviour
{
    public Transform target;
    public int rotateSpeed = 20;

    private void Update()
    {
        if(target!=null)
        {
            Vector2 MousePosition = Input.mousePosition;            
            transform.position = MousePosition;
            Vector2 direction = new Vector2(transform.position.x - target.position.x, transform.position.y - target.position.y);

            float angle = Mathf.Atan2(direction.y, direction.x) * Mathf.Rad2Deg;
            Quaternion angleAxis = Quaternion.AngleAxis(angle - 90f, Vector3.forward);
            Quaternion rotation = Quaternion.Slerp(transform.rotation, angleAxis, rotateSpeed * Time.deltaTime);
            transform.rotation = rotation;

        }

        

        
    }
}

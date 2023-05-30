using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChangeRoom : MonoBehaviour
{
    [SerializeField] GameObject currRoom;
    [SerializeField] GameObject nextRoom;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            StartCoroutine(ChangeRoom_co());
        }
    }

    IEnumerator ChangeRoom_co()
    {
        if (currRoom.activeSelf)
        {
            nextRoom.SetActive(true);
            yield return null; //FadeInOut
            currRoom.SetActive(false);
        }
        else
        {
            currRoom.SetActive(true);
            yield return null; //FadeInOut
            nextRoom.SetActive(false);
        }
        

    }
}

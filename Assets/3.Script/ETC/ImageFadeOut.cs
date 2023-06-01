using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ImageFadeOut : MonoBehaviour
{
    public Image image;   

    private void Awake()
    {
        image = GetComponent<Image>();
    }

    private void Start()
    {
        StartCoroutine("FadeOut");
    }
   

    public IEnumerator FadeOut()
    {  

        for (float f = 1f; f >= -0.05f; f -= 0.05f)
        {
            Color color = image.color;
            color.a= f;
            image.color = color;
            yield return new WaitForSeconds(0.01f);
        }



    }
}

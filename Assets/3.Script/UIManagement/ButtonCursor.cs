using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonCursor : MonoBehaviour
{
    float selection;
    //public GameObject startSprite;
    [SerializeField] private GameObject startedSelected;
    //public GameObject optionSprite;
    [SerializeField] private GameObject optionSelected;
    //public GameObject exitSprite;
    [SerializeField] private GameObject exitSelected;

    // Start is called before the first frame update
    void Start()
    {
        selection = 1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.S))
        {
            if (selection <= 3)
            {
                selection++;
            }
            if (selection > 3)
            {
                selection = 1;
            }
        }

        if (Input.GetKeyDown(KeyCode.W))
        {
            if (selection >= 1)
            {
                selection--;
            }
            if (selection < 1)
            {
                selection = 3;
            }
        }

        if (selection == 1)
        {
            //startSprite.SetActive(true);
            startedSelected.SetActive(true);
            //optionSprite.SetActive(true);
            optionSelected.SetActive(false);
            //exitSprite.SetActive(true);
            exitSelected.SetActive(false);

        }
        if (selection == 2)
        {
            //startSprite.SetActive(true);
            startedSelected.SetActive(false);
            //optionSprite.SetActive(true);
            optionSelected.SetActive(true);
            //exitSprite.SetActive(true);
            exitSelected.SetActive(false);
        }
        if (selection == 3)
        {
            //startSprite.SetActive(true);
            startedSelected.SetActive(false);
            //optionSprite.SetActive(true);
            optionSelected.SetActive(false);
           // exitSprite.SetActive(true);
            exitSelected.SetActive(true);
        }

    }
}

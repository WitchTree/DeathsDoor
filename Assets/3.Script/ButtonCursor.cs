using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonCursor : MonoBehaviour
{
    float selection;
    [SerializeField] private GameObject startedSelected;
    [SerializeField] private GameObject optionSelected;
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
            startedSelected.SetActive(true);
            optionSelected.SetActive(false);
            exitSelected.SetActive(false);

        }
        if (selection == 2)
        {
            startedSelected.SetActive(false);
            optionSelected.SetActive(true);
            exitSelected.SetActive(false);
        }
        if (selection == 3)
        {
            startedSelected.SetActive(false);
            optionSelected.SetActive(false);
            exitSelected.SetActive(true);
        }

    }
}

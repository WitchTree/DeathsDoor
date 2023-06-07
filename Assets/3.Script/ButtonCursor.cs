using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ButtonCursor : MonoBehaviour
{
    float selection;


    [SerializeField] private GameObject selected_0; 
    [SerializeField] private GameObject selected_1;
    [SerializeField] private GameObject selected_2;

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
            selected_0.SetActive(true);
            selected_1.SetActive(false);
            selected_2.SetActive(false);

        }
        if (selection == 2)
        {
            selected_0.SetActive(false);
            selected_1.SetActive(true);
            selected_2.SetActive(false);
        }
        if (selection == 3)
        {
            selected_0.SetActive(false);
            selected_1.SetActive(false);
            selected_2.SetActive(true);
        }

    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

    public class CycleSpells : MonoBehaviour
{
    public GameObject[] spells;
    private int n;

    // Start is called before the first frame update
    void Start()
    {
        //Put some code to check if the track pad on the right hand is pressed to swich spells in the wand then have it run the method bellow
        //ChangeSpell(spells)
        //XRGrabInteractable grabbable = GetComponent<XRGrabInteractable>();
        //grabbable.activated.AddListener(FireSpell);
    }

    public GameObject ChangeSpell()
    {
        
        if (n == spells.Length)
        {
            n = 0;
        }
        n += 1;
        return spells[n];
    }
}

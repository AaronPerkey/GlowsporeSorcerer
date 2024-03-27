using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spell
{
    public GameObject gameObject;
}

    public class CycleSpells : MonoBehaviour
{
    public Spell[] spells;
    private int n;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //Put some code to check if the track pad on the right hand is pressed to swich spells in the wand then have it run the method bellow
        //ChangeSpell(spells);
    }

    private int ChangeSpell(Spell[] spells)
    {
        n += 1;
        if (n > spells.Length)
        {
            n = 0;
        }
        return n;
    }
}

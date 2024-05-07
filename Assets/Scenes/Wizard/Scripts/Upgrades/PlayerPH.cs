using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPH : MonoBehaviour
{
    ZapSpell zapSpell;
     FireSpell fireSpell;
    PFreezeSpell freezeSpell;
    Health health;


    private void Awake()
    {
        zapSpell = GetComponent<ZapSpell>();
        fireSpell = GetComponent<FireSpell>();
        freezeSpell = GetComponent<PFreezeSpell>();
        health = GetComponent<Health>();

        //set inital damage
        zapSpell.damage = 5;
        fireSpell.damage = 1;
        //freezeSpell.damage = 10;
    }
    public void IncreasePlayerDamage()
    {
        zapSpell.damage += 2;
        fireSpell.damage += 2;
        //freezeSpell.damage += 2;
    }

    public void IncreasePlayerHealth()
    {
        health.maxHealth += 10;
    }
}

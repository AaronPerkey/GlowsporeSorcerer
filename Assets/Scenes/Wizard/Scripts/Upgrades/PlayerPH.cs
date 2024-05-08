using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPH : MonoBehaviour
{
    ZapSpell zapSpell;
    EZapSpell eZapSpell;
    FireSpell fireSpell;
    EFireSpell eFireSpell;
    SwordCollision swordCollision;

    Health health;


    private void Awake()
    {
        zapSpell = GetComponent<ZapSpell>();
        eZapSpell = GetComponent<EZapSpell>();
        fireSpell = GetComponent<FireSpell>();
        eFireSpell = GetComponent<EFireSpell>();
        swordCollision = GetComponent<SwordCollision>();

        health = GetComponent<Health>();

        //set inital damage
        swordCollision.damage = 0;
        zapSpell.damage = 5;
        eZapSpell.damage = 5;
        fireSpell.damage = 1;
        eFireSpell.damage = 1;
    }
    public void IncreasePlayerDamage()
    {
        swordCollision.damage += 2;
        zapSpell.damage += 2;
        eZapSpell.damage += 2;
        fireSpell.damage += 2;
        eFireSpell.damage += 2;
    }

    public void IncreasePlayerHealth()
    {
        health.maxHealth += 10;
    }
}

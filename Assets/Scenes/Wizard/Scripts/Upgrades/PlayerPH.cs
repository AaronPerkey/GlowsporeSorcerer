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
        fireSpell = GetComponent<FireSpell>();
        swordCollision = GetComponent<SwordCollision>();

        health = GetComponent<Health>();

        //set inital damage
        swordCollision.damage = 0;
        zapSpell.damage = 5;
        fireSpell.damage = 1;
    }
    public void IncreasePlayerDamage()
    {
        swordCollision.damage += 2;
        zapSpell.damage += 2;
        fireSpell.damage += 2;
    }

    public void IncreasePlayerHealth()
    {
        health.maxHealth += 10;
    }
}

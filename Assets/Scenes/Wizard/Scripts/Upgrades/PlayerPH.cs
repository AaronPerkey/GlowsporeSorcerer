using UnityEngine;

public class PlayerPH : MonoBehaviour
{
    public ZapSpell zapSpell;
    public FireSpell fireSpell;
    public SwordCollision swordCollision;

    public Health health;


    private void Awake()
    {
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

    public void HealPlayerToMaxHealth()
    {
        health.currentHealth = health.maxHealth;
    }

}

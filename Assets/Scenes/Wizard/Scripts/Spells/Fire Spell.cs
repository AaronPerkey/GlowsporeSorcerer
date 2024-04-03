using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;

public class FireSpell : MonoBehaviour
{
    private Healthbar healthbar;
    private int x;
    public int damage;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        healthbar = collision.GetComponentInChildren<Healthbar>();
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {
            Destroy(gameObject);
            while (x <= 7)
            {
                if (health != null)
                {
                    health.currentHealth -= damage;
                    healthbar.UpdateHealthbar(health.maxHealth, health.currentHealth);
                }
                Thread.Sleep(1000); //TODO fix timer does not work with unity
                x += 1;
            }  
        }
    }
}

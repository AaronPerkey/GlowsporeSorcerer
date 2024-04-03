using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zap : MonoBehaviour
{
    private Healthbar healthbar;
    public int damage;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        healthbar = collision.GetComponentInChildren<Healthbar>();
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {

            if (health != null)
            {
                health.currentHealth -= damage;
                healthbar.UpdateHealthbar(health.maxHealth, health.currentHealth);
            }
            Destroy(gameObject);
        }
    }
}

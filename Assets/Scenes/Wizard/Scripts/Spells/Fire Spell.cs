using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;

public class FireSpell : MonoBehaviour
{
    private Healthbar healthbar;
    Health health;

    public int damage;
    private bool collided = false;

    private float nextTimeToDamage = 0f;
    private float damageRate = 1.5f;
    

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            
            healthbar = collision.GetComponentInChildren<Healthbar>();
            health = collision.gameObject.GetComponent<Health>();
            collided = true;
        }
    }

    void Update()
    {
        if (collided && Time.time >= nextTimeToDamage)
        {
            nextTimeToDamage = Time.time + 1f / damageRate;
            FireDamage(health);
        }
    }

    void FireDamage(Health health)
        {
            if (health != null)
            {
                health.currentHealth -= damage;
            }
        }


}

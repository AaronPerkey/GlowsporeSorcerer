using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EFireSpell : MonoBehaviour
{
    Health health;

    [HideInInspector]
    public float damage; 
    [HideInInspector]
    public bool collided = false;
    [HideInInspector]
    public bool amICollided = false;

    private float nextTimeToDamage = 0f;
    private float damageRate = 1.5f;

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Player"))
        {
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
            health.TakeDamage(damage);
        }
    }
}

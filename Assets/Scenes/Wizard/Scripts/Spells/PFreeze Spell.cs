using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PFreezeSpell : MonoBehaviour
{
    Health health;
    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            Debug.Log("Collision detected");
            health = collision.gameObject.GetComponent<Health>();
            Damage();
        }
    }

    public void Damage()
    {
        if (health != null)
        {
            float damage = health.currentHealth / 2;
            Debug.Log("Damage: " + damage);
            health.TakeDamage(damage);
        }
    }
}

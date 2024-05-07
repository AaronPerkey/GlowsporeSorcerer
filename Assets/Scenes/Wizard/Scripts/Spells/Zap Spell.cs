using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ZapSpell : MonoBehaviour
{
    public int damage;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {
            Transform current = collision.transform;
            /*
            while (health != null)
            {
                current = current.parent;
                health = current.gameObject.GetComponent<Health>();
            }
            if (health != null)
            {
                
            }
            */
            health.TakeDamage(damage);
            Destroy(gameObject);
        }
    }
}

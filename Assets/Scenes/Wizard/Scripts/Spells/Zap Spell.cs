using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zap : MonoBehaviour
{
    public int damage;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {

            if (health != null)
            {
                health.TakeDamage(damage);
            }
            Destroy(gameObject);
        }
    }
}

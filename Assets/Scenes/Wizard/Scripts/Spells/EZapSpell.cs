using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EZapSpell : MonoBehaviour
{
    [HideInInspector]
    public float damage = 5;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Player"))
        {
            health.TakeDamage(damage);
            Destroy(gameObject);
        }
    }
}

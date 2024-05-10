using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EFreezeSpell : MonoBehaviour
{
    Health health;

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Player"))
        {
            health = collision.gameObject.GetComponent<Health>();
            Damage();
        }
    }

    public void Damage()
    {
        if (health != null)
        {
            health.TakeDamage(10);
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EZapSpell : MonoBehaviour
{
    
    void OnTriggerEnter(Collider collision)
    {
        
        if (collision.gameObject.CompareTag("Player"))
        {
            Health health;
            health = collision.gameObject.GetComponent<Health>();
            Debug.Log("I should be damaging the player right now");
            health.TakeDamage(5);
            Destroy(gameObject);
        }
    }
}

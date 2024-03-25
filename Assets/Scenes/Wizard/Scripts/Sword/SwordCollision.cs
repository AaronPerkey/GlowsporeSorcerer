using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordCollision : MonoBehaviour
{
    [SerializeField] public Healthbar healthbar;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

    }
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {
            
            if( health != null)
            {
                health.currentHealth -= 5;
                healthbar.UpdateHealthbar(health.maxHealth, health.currentHealth);
            }

        }
    }
}

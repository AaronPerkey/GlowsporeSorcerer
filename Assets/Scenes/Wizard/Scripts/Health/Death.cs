using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Death : MonoBehaviour
{
    Health health;
    public bool invincible;

    // Start is called before the first frame update
    void Start()
    {
        health = gameObject.GetComponentInChildren<Health>();
    }

    // Update is called once per frame
    void Update()
    {
        if (invincible)
        {
            if (health.currentHealth <= 0)
            {
                health.currentHealth = health.maxHealth;
            }
        }
        if (health.currentHealth <= 0 && !invincible)
        {
            Destroy(gameObject);
        }
    }
}

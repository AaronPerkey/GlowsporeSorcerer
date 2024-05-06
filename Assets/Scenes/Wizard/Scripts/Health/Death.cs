using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Death : MonoBehaviour
{
    Health health;
    public bool invincible;
    CoinDropper dropper;

    // Start is called before the first frame update
    void Start()
    {
        health = gameObject.GetComponentInChildren<Health>();
        dropper = gameObject.GetComponent<CoinDropper>();
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
            dropper.CoinDrop();
            Destroy(gameObject);
        }
    }
}

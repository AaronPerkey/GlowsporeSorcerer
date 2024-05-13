using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour
{
    [SerializeField] public float maxHealth;
    public float currentHealth;
    [SerializeField] public Healthbar healthbar;
    public AudioClip playerHurt;

    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
    }

    public void TakeDamage(float damage)
    {
        currentHealth -= damage;
        Debug.Log("Current health: " + currentHealth);
        Debug.Log("Damage: " + damage);
        if(gameObject.tag == "Player")
        {
            
            AudioSource.PlayClipAtPoint(playerHurt, transform.position, 0.5f);
            Debug.Log("Sound1");

        }
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
    }

    // Update is called once per frame
    void Update()
    {
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
    }
}

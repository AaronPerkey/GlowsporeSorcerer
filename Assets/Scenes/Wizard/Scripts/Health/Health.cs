using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour
{
    [SerializeField] public float maxHealth;
    public float currentHealth;
    [SerializeField] public Healthbar healthbar;

    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;

        
    }

    // Update is called once per frame
    void Update()
    {
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
    }
}

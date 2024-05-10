using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class Death : MonoBehaviour
{
    Health health;
    public bool invincible;
    CoinDropper dropper;
    public AudioClip EnemyDeathClip;

    // Start is called before the first frame update
    void Start()
    {
        health = gameObject.GetComponentInChildren<Health>();
        dropper = gameObject.GetComponent<CoinDropper>();
        if (dropper == null)
        {
            Debug.LogError("COINDROPPER NOT FOUND");
        }
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
            //Adjust volume with 3rd argument below
            AudioSource.PlayClipAtPoint(EnemyDeathClip, transform.position);
            Destroy(gameObject);
        }
        
        
    }
}

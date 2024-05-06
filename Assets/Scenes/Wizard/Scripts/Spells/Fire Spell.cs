using System.Collections;
using System.Collections.Generic;
using System.Threading;
using Unity.PlasticSCM.Editor.WebApi;
using UnityEngine;

public class FireSpell : MonoBehaviour
{
    Health health;

    public int damage;
    private bool collided = false;

    private float nextTimeToDamage = 0f;
    private float damageRate = 1.5f;

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            health = collision.gameObject.GetComponent<Health>();
            if (health != null)
            {
                Debug.Log("collided(Fire)" + collided);
                collided = true;
            }
            Destroy(gameObject);
        }
    }

    void Update()
    {
        Debug.Log("collided(Fire)" + collided);
        if (collided)
        {
            Debug.Log("timer(Fire)" + Time.time);
            Debug.Log("nextTimeToDamage(Fire)" + nextTimeToDamage);
        }
        if (collided && Time.time >= nextTimeToDamage)
        {
            Debug.Log("timer(Fire)");
            nextTimeToDamage = Time.time + 1f / damageRate;
            FireDamage(health);
        }
    }

    void FireDamage(Health health)
    {
        if (health != null)
        {
            health.TakeDamage(damage);
        }
    }


}

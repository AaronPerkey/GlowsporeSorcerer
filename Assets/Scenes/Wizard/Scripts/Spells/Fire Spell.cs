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


    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.CompareTag("Enemy"))
        {
            health = collision.collider.gameObject.GetComponent<Health>();
            Transform current = collision.collider.transform;
            while (health == null && current.parent != null)
            {
                current = current.parent;
                health = current.gameObject.GetComponent<Health>();
            }
            if (health != null)
            {
                collided = true;
            }
            Destroy(gameObject);
        }
    }

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            health = collision.gameObject.GetComponent<Health>();
            Transform current = collision.transform;
            while (health == null && current.parent != null)
            {
                current = current.parent;
                health = current.gameObject.GetComponent<Health>();
            }
            if (health != null)
            {
                collided = true;
            }
            Destroy(gameObject);
        }
    }

    void Update()
    {
        if (collided && Time.time >= nextTimeToDamage)
        {
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

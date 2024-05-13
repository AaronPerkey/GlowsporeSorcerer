using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordCollision : MonoBehaviour
{
    [HideInInspector]
    public float damage;
    public AudioClip swordHit;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {
            if (health != null)
            {
                AudioSource.PlayClipAtPoint(swordHit, transform.position, 0.75f);
                health.TakeDamage(damage);
            }
        }
    }
}

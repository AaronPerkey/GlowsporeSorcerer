using UnityEngine;

public class ZapSpell : MonoBehaviour
{
    [HideInInspector]
    public float damage;
    void OnTriggerEnter(Collider collision)
    {
        Health health;
        health = collision.gameObject.GetComponent<Health>();
        if (collision.gameObject.CompareTag("Enemy"))
        {
            health.TakeDamage(damage);
            Destroy(gameObject);
        }
    }
}

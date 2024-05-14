using UnityEngine;

public class PFreezeSpell : MonoBehaviour
{
    Health health;
    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            Debug.Log("Collision detected");
            health = collision.gameObject.GetComponent<Health>();
            Damage();
            Destroy(gameObject);
        }
    }

    public void Damage()
    {
        if (health != null)
        {
            float damage = 10;
            Debug.Log("Damage: " + damage);
            health.TakeDamage(damage);
        }
    }
}

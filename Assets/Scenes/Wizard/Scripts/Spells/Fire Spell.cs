using System.Collections;
using System.Collections.Generic;
using System.Threading;
using UnityEngine;

public class FireSpell : MonoBehaviour
{
    private Healthbar healthbar;
    private int x;
    public int damage;
    private int timeDelay = 1;
    Timer timer;
    public GameObject _timerGameObject;
    Health health;

    void Start()
    {
        timer = GetComponent<Timer>();
    }

    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            
            healthbar = collision.GetComponentInChildren<Healthbar>();
            health = collision.gameObject.GetComponent<Health>();
            Instantiate(_timerGameObject, new Vector3(0, -1, 0), Quaternion.identity);
            Destroy(gameObject);
            timer.DelaySeconds(7);
            


        }
    }

    void FixedUpdate()
    {
        if (timer.timeIsRunning && (Time.timeSinceLevelLoad * 10) % 10 == 0)
        {
            FireDamage(health);
        }
    }

    void FireDamage(Health health)
        {
            if (health != null)
            {
                health.currentHealth -= damage;


            }
        }


}

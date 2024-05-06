using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PFreezeSpell : MonoBehaviour
{
    Health health;
    NavMeshAgent agent;

    private bool collided = false;

    private float nextTimeToFreeze = 0f;
    private float freezeTime = 3f;

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
    }


    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            health = collision.gameObject.GetComponent<Health>();
            collided = true;
        }
    }

    void Update()
    {
        if (collided && Time.time >= nextTimeToFreeze)
        {
            Debug.Log("Freeze timer started");
            nextTimeToFreeze = Time.time + freezeTime;
            Freeze();
        }
    }

    void Freeze()
    {
        if (health != null)
        {
            agent.isStopped = true;
        }
    }
}

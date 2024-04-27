# GlowsporeSorcerer
VR class semester long project


using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class EnemyAi : MonoBehaviour
{
    public NavMeshAgent agent;
    public Transform player;
    public LayerMask whatIsGround, whatIsPlayer;
    public PFreezeSpell freezeSpell;

    //Patrolling 
    public Vector3 walkPoint;
    public bool walkPointSet;
    public float walkPointRange;

    //Attacking
    public float timeBetweenAttacks;
    bool alreadyAttacked;
    [HideInInspector] public EnemyAttack enemyAttack;

    //states
    public float sightRange, attackRange;
    public bool playerInSightRange, playerInAttackRange;

    private void Awake()
    {
        freezeSpell = GetComponent<PFreezeSpell>();
        player = GameObject.FindGameObjectWithTag("Player").transform;
        agent = GetComponent<NavMeshAgent>();
        enemyAttack = GetComponent<EnemyAttack>();
    }

    private void Update()
    {
        playerInSightRange = Physics.CheckSphere(transform.position, sightRange, whatIsPlayer);
        playerInAttackRange = Physics.CheckSphere(transform.position, attackRange, whatIsPlayer);

        if (!playerInSightRange && !playerInAttackRange) Patroling();
        if (playerInSightRange && !playerInAttackRange) ChansePlayer();
        if (playerInSightRange && playerInAttackRange) AttackPlayer();

    }

    public void Patroling()
    {
        if (!walkPointSet) SearchWalkPoint();

        if (walkPointSet) agent.SetDestination(walkPoint);

        Vector3 distanceToWalkPoint = transform.position - walkPoint;

        if (distanceToWalkPoint.magnitude < 1f) walkPointSet = false;
    }

    public void SearchWalkPoint()
    {
        float randomZ = Random.Range(-walkPointRange, walkPointRange);
        float randomX = Random.Range(-walkPointRange, walkPointRange);

        walkPoint = new Vector3(transform.position.x + randomX, transform.position.y, transform.position.z + randomZ);

        if (Physics.Raycast(walkPoint, -transform.up, 2f, whatIsGround)) walkPointSet = true;
    }

    public void ChansePlayer()
    {
        agent.SetDestination(player.position);
    }

    public void AttackPlayer()
    {
        agent.SetDestination(transform.position);

        transform.LookAt(player);

        if (!alreadyAttacked)
        {
            enemyAttack.FireSpell();
            alreadyAttacked = true;
            Invoke(nameof(ResetAttack), timeBetweenAttacks);
        }
    }

    private void ResetAttack()
    {
        alreadyAttacked = false;
    }
}

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PFreezeSpell : MonoBehaviour
{
    Health health;
    NavMeshAgent agent;
    EnemyAi enemy;

    private bool collided = false;
    public bool isFrozen = false;

    private float nextTimeToFreeze = 0f;
    private float freezeTime = 3f;

    private void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        enemy = GetComponent<EnemyAi>();
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
        if (Time.time >= nextTimeToFreeze)
        {
            isFrozen = false;
        }
            if (collided && Time.time >= nextTimeToFreeze)
        {
            nextTimeToFreeze = Time.time + freezeTime;
            Freeze();
        }
    }

    void Freeze()
    {
        if (health != null)
        {
            enemy.walkPointSet = true;
        }
    }
}

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EFreezeSpell : MonoBehaviour
{
    Health health;

    public int damage;
    private bool collided = false;

    private float nextTimeToDamage = 0f;
    private float damageRate = 2f;


    void OnTriggerEnter(Collider collision)
    {

        if (collision.gameObject.CompareTag("Enemy"))
        {
            health = collision.gameObject.GetComponent<Health>();
            Transform current = collision.transform;
            /*
              while (health == null || current.parent == null)
              {
                  current = current.parent;
                  health = current.gameObject.GetComponent<Health>();
              }
              */
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

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  

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

    public void TakeDamage(float damage)
    {
        currentHealth -= damage;
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
    }

    // Update is called once per frame
    void Update()
    {
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
    }
}

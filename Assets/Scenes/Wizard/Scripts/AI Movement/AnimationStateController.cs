using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationStateController : MonoBehaviour
{
    Animator animator;
    EnemyAi enemyAi;
    GameObject childObject;
    EnemySpawner spawner;

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        enemyAi = GetComponentInParent<EnemyAi>();
        spawner = GetComponent<EnemySpawner>();
        //childObject = childObject.transform.parent.gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        if (enemyAi.walkPointSet || enemyAi.playerInSightRange)
        {
            animator.SetBool("isWalking", true);
        }
        if (enemyAi.playerInAttackRange) 
        {
            animator.SetBool("isWalking", false);
        }

        if (spawner.collided)
        {
            animator.SetBool("spawingEnemies", true);
        }
        else
        {
            animator.SetBool("spawingEnemies", false);
        }
    }
}

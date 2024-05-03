using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationStateController : MonoBehaviour
{
    Animator animator;
    EnemyAi enemyAi;
    GameObject childObject;

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        enemyAi = GetComponentInParent<EnemyAi>();
        //childObject = childObject.transform.parent.gameObject;
    }

    // Update is called once per frame
    void Update()
    {
        if (enemyAi.walkPointSet || enemyAi.playerInSightRange)
        {
            Debug.Log("is walking");
            animator.SetBool("isWalking", true);
        }
        if (enemyAi.playerInAttackRange) 
        {
            animator.SetBool("isWalking", false);
        }
    }
}

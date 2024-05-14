using UnityEngine;

public class AnimationStateController : MonoBehaviour
{
    private Animator animator;
    private EnemyAi enemyAi;

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        enemyAi = GetComponentInParent<EnemyAi>();
    }

    // Update is called once per frame
    void Update()
    {
        if (this.enemyAi.walkPointSet || this.enemyAi.playerInSightRange )
        {
            animator.SetBool("isWalking", true);
        }
        if (enemyAi.playerInAttackRange) 
        {
            animator.SetBool("isWalking", false);
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using Unity.VisualScripting;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{

    public int numberOfEnemiesToSpawn;
    private int numberOfEnimiesSpawned;
    public GameObject[] enemies;
    private float nextTimeToSpawn = 0f;
    private float spawnRate = 1f;
    public Transform spawnPoint;
    [HideInInspector]
    public bool collided;
    private bool alreadyTriggered;


    void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            collided = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (collided && Time.time >= nextTimeToSpawn && numberOfEnimiesSpawned < numberOfEnemiesToSpawn)
        {
            Debug.Log("timer(Fire)");
            nextTimeToSpawn = Time.time + 1f / spawnRate;
            SpawnEnemies();
            numberOfEnimiesSpawned += 1;
        }
    }

    private void SpawnEnemies()
    {
        if (!alreadyTriggered)
        {
                int enemy = Random.Range(0, enemies.Length);
                float randomZ = Random.Range(0, 10);
                float randomX = Random.Range(0, 10);
                int nPx = Random.Range(0, 10);
                int nPz = Random.Range(0, 10);
                if (nPx <= 5)
                {
                    randomX = -1 * randomX;
                }

                if (nPz <= 5)
                {
                    randomZ = -1 * randomZ;
                }

                Vector3 position = new Vector3(spawnPoint.transform.position.x + randomX, 0,
                    spawnPoint.transform.position.z + randomZ);
                Instantiate(enemies[enemy], position, Quaternion.identity);
        }
    }
}

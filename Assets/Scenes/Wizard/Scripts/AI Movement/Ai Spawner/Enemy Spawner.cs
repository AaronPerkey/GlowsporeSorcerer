using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using Unity.VisualScripting;
using UnityEngine;

public class EnemySpawner : MonoBehaviour
{

    public int numberOfEnemiesToSpawn;
    public GameObject[] enemies;
    private float nextTimeToSpawn = 0f;
    private float spawnRate = 0.25f;
    public Transform spawnPoint;
    [HideInInspector]
    public bool collided;
    private bool alreadyTriggered;
    public AudioClip spawnNoise;


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
        if (collided && Time.time >= nextTimeToSpawn)
        {
            Debug.Log("timer(Fire)");
            nextTimeToSpawn = Time.time + 1f / spawnRate;
            SpawnEnemies();
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
            AudioSource.PlayClipAtPoint(spawnNoise, spawnPoint.transform.position, 0.9f);
            Instantiate(enemies[enemy], position, Quaternion.identity);
        }
    }
}

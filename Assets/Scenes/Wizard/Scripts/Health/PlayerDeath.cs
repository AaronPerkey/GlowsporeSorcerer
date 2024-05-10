using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeath : MonoBehaviour
{
    Health health;
    private DungeonCreator dungeonGenerator;
    public GameObject dungeonGeneratorObj;
    // Start is called before the first frame update
    void Start()
    {
        health = gameObject.GetComponentInChildren<Health>();

        // Find the GameObject with the tag "Generator"
        dungeonGeneratorObj = GameObject.FindWithTag("Generator");

        // Check if the GameObject was found
        if (dungeonGeneratorObj == null)
        {
            Debug.LogError("DungeonGenerator GameObject not found with tag 'Generator'");
        }
    }

    // Update is called once per frame
    void Update()
    {
        if(health.currentHealth <= 0)
        {
            Debug.Log("Player died");
            dungeonGenerator = dungeonGeneratorObj.GetComponent<DungeonCreator>();
            dungeonGenerator.MovePlayerToStartRoom();
            health.maxHealth = 100;
            health.currentHealth = 100;
        }
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerDeath : MonoBehaviour
{
    Health health;
    private DungeonCreator dungeonGenerator;
    public GameObject dungeonGeneratorObj;
    public GameObject deathCanvas;
    private Coroutine deathCoroutine; // Store reference to the coroutine
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
            deathCanvas.SetActive(true);
            deathCanvas.SetActive(true);
            if (deathCoroutine != null)
            {
                // Stop previous coroutine if it's running
                StopCoroutine(deathCoroutine);
            }
            // Start a new coroutine to deactivate the canvas after 5 seconds
            deathCoroutine = StartCoroutine(DeactivateDeathCanvasAfterDelay());
            dungeonGenerator = dungeonGeneratorObj.GetComponent<DungeonCreator>();
            dungeonGenerator.MovePlayerToStartRoom();
            health.maxHealth = 100;
            health.currentHealth = 100;
        }
    }

    IEnumerator DeactivateDeathCanvasAfterDelay()
    {
        // Wait for 5 seconds
        yield return new WaitForSeconds(5f);
        // Deactivate the death canvas
        deathCanvas.SetActive(false);
    }
}

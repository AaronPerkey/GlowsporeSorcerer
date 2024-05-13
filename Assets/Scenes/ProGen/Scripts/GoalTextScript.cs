using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class GoalTextScript : MonoBehaviour
{
    public Transform player; // Reference to the player's transform

    private DungeonCreator dungeonGenerator;
    public GameObject dungeonGeneratorObj;

    private TextMeshProUGUI textMesh; // Reference to the TextMeshPro component

    void Awake()
    {
        // Get the TextMeshPro component attached to the GameObject
        textMesh = GetComponent<TextMeshProUGUI>();
        if (textMesh == null)
        {
            Debug.LogError("TextMeshPro component not found. Ensure it is attached to the GameObject.");
        }

        // Find the GameObject with the tag "Generator"
        dungeonGeneratorObj = GameObject.FindWithTag("Generator");
        if (dungeonGeneratorObj == null)
        {
            Debug.LogError("DungeonGenerator GameObject not found with tag 'Generator'");
        }
    }

    void Start()
    {
        // Find the GameObject with the tag "Player"
        player = GameObject.FindWithTag("Player").transform;
        if (player == null)
        {
            Debug.LogError("Player GameObject not found with tag 'Player'");
        }

        // Initialize the text to display the goal number
        UpdateText();
    }

    void LateUpdate()
    {
        // Ensure the player transform reference is not null
        if (player != null)
        {
            // Calculate the direction from the text to the player
            Vector3 direction = player.position - transform.position;
            direction.y = 0f; // Ignore vertical component

            // Rotate the text to face the player only around the Y-axis
            transform.rotation = Quaternion.LookRotation(-direction);
        }
    }

    // Function to update the text to display the goal number
    public void UpdateText()
    {
        if (dungeonGeneratorObj != null)
        {
            dungeonGenerator = dungeonGeneratorObj.GetComponent<DungeonCreator>();
            if (dungeonGenerator != null)
            {
                float goalNumber = dungeonGenerator.floorNumber;
                if(goalNumber % 5 == 0)
                {
                    textMesh.text = "To Shop";
                }
                else
                {
                    textMesh.text = "To Floor " + goalNumber.ToString();
                }
            }
            else
            {
                Debug.LogWarning("DungeonCreator component not found on DungeonGenerator GameObject.");
            }
        }
        else
        {
            Debug.LogWarning("DungeonGenerator GameObject not initialized.");
        }
    }
}

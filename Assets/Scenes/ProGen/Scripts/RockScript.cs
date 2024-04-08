using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.InputSystem.EnhancedTouch;

public class RockScript : MonoBehaviour
{
    void Start(){

    }
    void OnTriggerEnter(Collider other)
    {
        Debug.Log("Collision detected", other);
        if (other.CompareTag("Hallway"))
        {
            Debug.Log("destroyed rock");
            // Destroy the rock if it collides with a hallway
            Destroy(gameObject);
        }
        
    }

}

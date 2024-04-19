using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class GoalScript : MonoBehaviour
{
   private DungeonCreator dungeonGenerator;
   public GameObject dungeonGeneratorObj;
   

   private void Start()
   {
       // Find the GameObject with the tag "Generator"
       dungeonGeneratorObj = GameObject.FindWithTag("Generator");


       // Check if the GameObject was found
       if (dungeonGeneratorObj == null)
       {
           Debug.LogError("DungeonGenerator GameObject not found with tag 'Generator'");
       }


   }


       private void OnTriggerEnter(Collider other)
   {
       if (other.CompareTag("Player"))
       {
           
            dungeonGenerator.regenerate = true;
            Debug.Log(dungeonGenerator.floorNumber);
            Destroy(gameObject);

       }
   }


   private void DestroyChildren(Transform parent)
   {
       // Loop through each child of the parent transform and destroy it
       foreach (Transform child in parent)
       {
           Destroy(child.gameObject);
       }
   }


}

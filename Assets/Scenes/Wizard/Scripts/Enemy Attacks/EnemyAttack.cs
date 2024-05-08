using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class EnemyAttack : MonoBehaviour
{
    public Transform[] launchPoints;

    public GameObject spell;
    private float firespeed = 30;

    public void FireSpell()
    {
        foreach (Transform launchPoint in launchPoints) 
        {
            GameObject spawnedSpell = Instantiate(spell);
            spawnedSpell.transform.position = launchPoint.position;
            spawnedSpell.GetComponent<Rigidbody>().velocity = launchPoint.forward * firespeed;
            Destroy(spawnedSpell, 5);
        }

    }
}
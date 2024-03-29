using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class Shoot : MonoBehaviour
{
    [HideInInspector] public CycleSpells cycleSpells;
    public Transform spawnPoint;
    public float firespeed;


    // Start is called before the first frame update
    void Start()
    {
        cycleSpells = GetComponent<CycleSpells>();
        XRGrabInteractable grabbable = GetComponent<XRGrabInteractable>();
        grabbable.activated.AddListener(FireSpell);
    }

    public void FireSpell(ActivateEventArgs arg)
    {
        GameObject spawnedSpell = Instantiate(cycleSpells.GetSpell());
        spawnedSpell.transform.position = spawnPoint.position;
        spawnedSpell.GetComponent<Rigidbody>().velocity = spawnPoint.forward * firespeed;
        Destroy(spawnedSpell, 5);
        
    }
}

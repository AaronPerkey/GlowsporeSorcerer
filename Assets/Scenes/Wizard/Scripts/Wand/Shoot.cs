using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class Shoot : MonoBehaviour
{
    CycleSpells cycleSpells;
    public Transform spawnPoint;
    public float firespeed = 0;


    // Start is called before the first frame update
    void Start()
    {
        XRGrabInteractable grabbable = GetComponent<XRGrabInteractable>();
        grabbable.activated.AddListener(FireSpell);
    }

    public void FireSpell(ActivateEventArgs arg)
    {
        GameObject spawnedSpell = Instantiate(cycleSpells.ChangeSpell());
        spawnedSpell.transform.position = spawnPoint.position;
        spawnedSpell.GetComponent<Rigidbody>().velocity = spawnPoint.forward * firespeed;
        Destroy(spawnedSpell, 5);
        
    }
}

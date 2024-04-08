using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;

public class Shoot : MonoBehaviour
{
    [HideInInspector] public CycleSpells cycleSpells;
    public Transform spawnPoint;

    public float firespeed;
    private float fireRate;
    [HideInInspector] public float lastShootTime = 0;

    private void Awake()
    {
        cycleSpells = GetComponent<CycleSpells>();
    }

    // Start is called before the first frame update
    void Start()
    {
        XRGrabInteractable grabbable = GetComponent<XRGrabInteractable>();
        grabbable.activated.AddListener(FireSpell);
    }

    public void FireSpell(ActivateEventArgs arg)
    {
        
        if (Time.time >= (lastShootTime + fireRate))
        {
            GameObject spawnedSpell = Instantiate(cycleSpells.GetSpell());
            spawnedSpell.transform.position = spawnPoint.position;
            spawnedSpell.GetComponent<Rigidbody>().velocity = spawnPoint.forward * firespeed;
            Destroy(spawnedSpell, 5);
            lastShootTime = Time.time;
            fireRate = FireRate();
        }

        Debug.Log("fire rate " + fireRate);
    }

    public float FireRate()
    {
        GameObject spell = cycleSpells.GetSpell();
        float x = 0;
        if (spell == cycleSpells.GetZapSpell())
        {
            x = 1;
            Debug.Log("I'm getting called");
        }
        if (spell == cycleSpells.GetFireSpell())
        {
            x = 4;
            Debug.Log("I'm also getting called");
        }
        if(spell == cycleSpells.GetFreezeSpell())
        {
            x = 12; Debug.Log("I'm also also getting called");
        }
        Debug.Log("cs.Spell " + cycleSpells.spells[cycleSpells.n]);
        Debug.Log("get Spell " + cycleSpells.GetSpell());
        Debug.Log("fire Spell " + cycleSpells.GetFireSpell());
        return x;
    }
}
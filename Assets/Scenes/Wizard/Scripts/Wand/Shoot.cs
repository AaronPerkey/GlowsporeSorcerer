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
    private float lastShootTime = 0;

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
        FireRate();
        Debug.Log("fire rate " + fireRate);
        if (Time.time > lastShootTime + fireRate)
        {
            GameObject spawnedSpell = Instantiate(cycleSpells.GetSpell());
            spawnedSpell.transform.position = spawnPoint.position;
            spawnedSpell.GetComponent<Rigidbody>().velocity = spawnPoint.forward * firespeed;
            Destroy(spawnedSpell, 5);
            lastShootTime = Time.time;
        }
    }

    public float FireRate()
    {
        GameObject spell = cycleSpells.GetSpell();
        if (spell = cycleSpells.GetZapSpell())
        {
            fireRate = 1;
        }
        if (spell = cycleSpells.GetFireSpell())
        {
            fireRate = 4;
        }
        else
        {
            fireRate = 12;
        }
        Debug.Log("cs.Spell " + cycleSpells.spells[cycleSpells.n]);
        Debug.Log("Spell " + cycleSpells.GetSpell());
        return fireRate;
    }
}
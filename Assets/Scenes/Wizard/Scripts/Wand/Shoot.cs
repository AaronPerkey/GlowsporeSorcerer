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
    public AudioClip shootClip;
    public AudioClip zapClip;
    public AudioClip freezeClip;

    private void Awake()
    {
        cycleSpells = GetComponent<CycleSpells>();
    }

    // Start is called before the first frame update
    void Start()
    {
        XRGrabInteractable grabbable = GetComponent<XRGrabInteractable>();
        grabbable.activated.AddListener(ShootSpell);
    }

    public void ShootSpell(ActivateEventArgs arg)
    {
        
        if (Time.time >= (lastShootTime + fireRate))
        {
            GameObject spawnedSpell = Instantiate(cycleSpells.GetSpell());
            spawnedSpell.transform.position = spawnPoint.position;
            spawnedSpell.GetComponent<Rigidbody>().velocity = spawnPoint.forward * firespeed;
            if (cycleSpells.GetSpell() == cycleSpells.GetFireSpell())
            {
                AudioSource.PlayClipAtPoint(shootClip, transform.position, 0.25f);
            }else if(cycleSpells.GetSpell() == cycleSpells.GetZapSpell())
            {
                AudioSource.PlayClipAtPoint(zapClip, transform.position, 0.25f);
            }else if(cycleSpells.GetSpell() == cycleSpells.GetFreezeSpell())
            {
                AudioSource.PlayClipAtPoint(freezeClip, transform.position, 0.25f);
            }
            Destroy(spawnedSpell, 5);
            lastShootTime = Time.time;
            fireRate = FireRate();
        }


    }

    public float FireRate()
    {
        GameObject spell = cycleSpells.GetSpell();
        float x = 0;
        if (spell == cycleSpells.GetZapSpell())
        {
            x = 0.25f;
        }
        if (spell == cycleSpells.GetFireSpell())
        {
            x = 2;
        }
        if(spell == cycleSpells.GetFreezeSpell())
        {
            x = 4;
        }
        return x;
    }
}
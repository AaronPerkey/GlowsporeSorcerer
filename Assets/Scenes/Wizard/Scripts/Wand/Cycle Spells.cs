using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;

public class CycleSpells : MonoBehaviour
{
    private XRGrabInteractable grabInteractable;
    //private bool listenersAdded = false;

    [HideInInspector] public Shoot shoot;
    public Transform spawnPoint;

    public InputActionReference changeSpellReference;
    public InputActionReference gripRightRefference;
    public InputActionReference gripLeftRefference;

    public GameObject[] spells;
    public GameObject[] spellIndicators;
    GameObject spellIndicator;
    public int n = 0;
    bool active = false;
    bool collided = false;


    private void Awake()
    {
        shoot = GetComponent<Shoot>();
    }


    /*
     * This method triggers the spawn of the spell indicator on the tip of the wand
     */
    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.gameObject.CompareTag("hand"))
        {
            collided = true;

           gripRightRefference.action.performed += OnButtonPress;

        }

    }

    /*
    * This method triggers the unspawns of the spell indicator on the tip of the wand
    */
    private void OnTriggerExit(Collider other)
    {
        if (other.transform.gameObject.CompareTag("hand"))
        {
            collided = false;
            gripRightRefference.action.performed += OnButtonRelease;
        }
    }

    /*
     * This method spawns the spell indicator(game object) on the tip of the wand
     */
    public void OnButtonPress(InputAction.CallbackContext context)
    {
        if (collided)
        {
            Debug.Log("Collided: " + collided);
            SpellIndicator();
            changeSpellReference.action.performed += ChangeSpell;
        }

        

    }

    /*
    * This method unspawns the spell indicator(game object) on the tip of the wand
    */
    public void OnButtonRelease(InputAction.CallbackContext context)
    {
        Destroy(spellIndicator);
    }

    private void Update()
    {

        // Check if spawnPoint and spellIndicators[n] are not null, and if n is within bounds
        if (spellIndicator != null && n >= 0 && n < spellIndicators.Length && spellIndicators[n] != null)
        {
            // Update the position of the spell indicator to match the position of the spawnPoint
            spellIndicator.transform.position = spawnPoint.position;
            spellIndicator.transform.rotation = spawnPoint.rotation;
        }
    }

    /*
     * This method cycles through spells
     */
    public void ChangeSpell(InputAction.CallbackContext context)
    {
        shoot.lastShootTime = 0;
        if (active)
        {
            n += 1;
        }

        if (n == 3 || !active)
        {
            n = 0;
            active = true;
        }
        SpellIndicator();
    }

    private void SpellIndicator()
    {
        Destroy(spellIndicator);
        spellIndicator = Instantiate(GetSpellIndicator(), spawnPoint.transform);

    }

    public GameObject GetSpellIndicator()
    {
        GameObject spellIndicator = spellIndicators[n];
        return spellIndicator;
    }

    public GameObject GetSpell()
    {
        GameObject spell = spells[n];
        return spell;
    }


    public GameObject GetZapSpell()
    {
        GameObject spell = spells[0];
        return spell;
    }

    public GameObject GetFireSpell()
    {
        GameObject spell = spells[1];
        return spell;
    }

    public GameObject GetFreezeSpell()
    {
        GameObject spell = spells[2];
        return spell;
    }
}
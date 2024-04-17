using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;

public class CycleSpells : MonoBehaviour
{
    private XRGrabInteractable grabInteractable;
    private bool listenersAdded = false;

    [HideInInspector] public Shoot shoot;
    public Transform spawnPoint;

    public InputActionReference changeSpellReference;
    public InputActionReference gripRightRefference;
    public InputActionReference gripLeftRefference;

    public GameObject[] spells;
    public GameObject[] spellIndicators;
    public GameObject spellIndicator;
    public int n = 0;
    bool active = false;
    bool collided = false;

    private void Awake()
    {
        shoot = GetComponent<Shoot>();


    }
    public void OnCollisionEnter(Collision collision)
    {
        if (collision.transform.gameObject.CompareTag("hand"))
        {
            Debug.Log("Wand interacted with hand, it worked");
            collided = true;
            gripRightRefference.action.performed += OnButtonPress;
            gripLeftRefference.action.performed += OnButtonPress;
            
        }
        else
        {
            gripRightRefference.action.canceled -= OnButtonRelease;
            gripLeftRefference.action.canceled -= OnButtonRelease;
        }
    }

    private void OnCollisionExit(Collision collision)
    {

        Debug.Log("Wand is no longer interacting with hand, it worked");
        collided = false;
        gripRightRefference.action.canceled -= OnButtonRelease;
        gripLeftRefference.action.canceled -= OnButtonRelease;
        
    }

    private void onDestroy()
    {
        // Unsubscribe from events to prevent memory leaks
        gripRightRefference.action.performed -= OnButtonPress;
        gripLeftRefference.action.performed -= OnButtonPress;
        changeSpellReference.action.performed -= ChangeSpell;
        gripRightRefference.action.canceled -= OnButtonRelease;
        gripLeftRefference.action.canceled -= OnButtonRelease;
    }

    private void OnButtonPress(InputAction.CallbackContext context)
    {
        if (collided)
        {
            SpellIndicator();
            changeSpellReference.action.performed += ChangeSpell;
        }

    }

    public void OnButtonRelease(InputAction.CallbackContext context)
    {
        if (!collided)
        {
            Debug.Log("Game object should be gone");
            Destroy(spellIndicator);
        }
    }

    private void Update()
    {

        // Check if spawnPoint and spellIndicators[n] are not null, and if n is within bounds
        if (spawnPoint != null && n >= 0 && n < spellIndicators.Length && spellIndicators[n] != null)
        {
            // Update the position of the spell indicator to match the position of the spawnPoint
            spellIndicator.transform.position = spawnPoint.position;
            spellIndicator.transform.rotation = spawnPoint.rotation;
        }
    }

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
        Debug.Log("spell Changed");
    }

    private void SpellIndicator()
    {
        Destroy(spellIndicator);
        spellIndicator = Instantiate(GetSpellIndicator(), spawnPoint);

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
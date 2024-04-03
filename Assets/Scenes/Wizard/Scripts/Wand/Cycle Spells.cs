using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;

    public class CycleSpells : MonoBehaviour
{
    public InputActionReference inputActionReference;
    public GameObject[] spells;
    public int n = 0;
    bool active = false;

    private void Awake()
    {
        inputActionReference.action.started += ChangeSpell;
    }

    private void OnDestroy()
    {
        inputActionReference.action.started -= ChangeSpell;
    }

    private void ChangeSpellButton(InputAction.CallbackContext context)
    {
        bool isActive = !gameObject.activeSelf;
        gameObject.SetActive(isActive);
    }

    public void ChangeSpell(InputAction.CallbackContext context)
    {
        if (active)
        {
            n += 1;
        }
        
        if (n == 3 || !active)
        {
            n = 0;
            active = true;
        }
    }

    public GameObject GetSpell()
    {
        GameObject spell = spells[n];
        return spell;
    }
}

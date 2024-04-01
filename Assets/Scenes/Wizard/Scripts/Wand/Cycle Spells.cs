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

    private void Awake()
    {
        inputActionReference.action.started += ChangeSpell;
    }

    private void OnDestroy()
    {
        inputActionReference.action.started -= ChangeSpell;
    }

    // Start is called before the first frame update
    void Start()
    {

        
    }

    private void Update()
    {

    }

    private void OnPrimary2DAxisClick()
    {

    }

    private void DoThing(ActivateEventArgs arg)
    {
        //ChangeSpell();
    }

    private void ChangeSpellButton(InputAction.CallbackContext context)
    {
        bool isActive = !gameObject.activeSelf;
        gameObject.SetActive(isActive);
    }
    public void ChangeSpell(InputAction.CallbackContext context)
    {
        Debug.Log(n);
        //Debug.Log(spells.Length);
        if (n == spells.Length || n >= spells.Length)
        {
            n = 0;
        }
        n += 1;
    }

    public GameObject GetSpell()
    {
        GameObject spell = spells[n];
        return spell;
    }
}

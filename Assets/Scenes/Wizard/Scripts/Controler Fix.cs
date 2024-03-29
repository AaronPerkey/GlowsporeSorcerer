using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;

public class ControlerFix : MonoBehaviour
{
    public void SnapTurnOff()
    {
        ContinuousTurnProvider.enabled = true;
        SnapTurnProvider.enabled = false;
    }


    public void SnapTurnOn()
    {
        SnapTurnProvider.enabled = true;
        ContinuousTurnProvider.enabled = false;
    }
}

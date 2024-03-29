# GlowsporeSorcerer
VR class semester long project


using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.XR.Interaction.Toolkit;

public class TrackpadPressHandler : MonoBehaviour
{
    private XRController controller;

    private void Start()
    {
        // Find the XR controller component attached to this GameObject
        controller = GetComponent<XRController>();

        // Subscribe to the trackpad press event
        controller.selectInteractionTriggered += OnTrackpadPress;
    }

    private void OnDestroy()
    {
        // Unsubscribe from the trackpad press event to prevent memory leaks
        controller.selectInteractionTriggered -= OnTrackpadPress;
    }

    private void OnTrackpadPress(XRBaseInteractor interactor)
    {
        // Check if the trackpad was pressed
        if (interactor.selectTarget)
        {
            Debug.Log("Trackpad pressed!");

            // Perform your desired actions here
            // For example, you can call a method or trigger an event
        }
    }
}

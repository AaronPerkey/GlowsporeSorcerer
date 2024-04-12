using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR.Interaction.Toolkit;
using UnityEngine.InputSystem;

public class HolsterTracker : MonoBehaviour
{
    public Transform pivotPoint;
    public Transform cameraTransform; // Reference to the camera's transform
    public List<Transform> holsters; // List of holster transforms

    private Vector3[] holsterOffsets; // Array to store initial offsets between the camera and each holster
    private Vector3 lastCameraPosition; // Store the last position of the camera;

    public float rotationSpeed = 50f; // Adjust this to control the speed of holster rotation
    public InputActionReference inputActionReference;
    private InputAction thumbstickAction;

    private void Awake()
    {
      
    }

    // Start is called before the first frame update
    void Start()
    {
        holsterOffsets = new Vector3[holsters.Count];

        // Calculate the initial offset between the camera and each holster
        for (int i = 0; i < holsters.Count; i++)
        {
            holsterOffsets[i] = holsters[i].position - cameraTransform.position;
        }

        // Initialize lastCameraPosition
        lastCameraPosition = cameraTransform.position;


        // Find the thumbstick action from the input system
        thumbstickAction = new InputAction(binding: "<XRController>/{Primary2DAxis}");
        thumbstickAction.Enable();

            // Parent the pivotPoint to the cameraTransform
    if (pivotPoint != null && cameraTransform != null)
    {
        pivotPoint.SetParent(cameraTransform);
        pivotPoint.localPosition = Vector3.zero; // Ensure it's centered on the camera
    }
    }

    private void OnDestroy()
    {
        // Clean up the input action
        thumbstickAction.Disable();
    }

    // Update is called once per frame
    void Update()
    {

        // Check if the camera transform is assigned
        if (cameraTransform != null)
        {
            // Update the position of each holster to maintain the relative offset
            for (int i = 0; i < holsters.Count; i++)
            {
                holsters[i].position = cameraTransform.position + holsterOffsets[i];
            }
            // Calculate the player's velocity based on the change in camera position
            Vector3 velocity = (cameraTransform.position - lastCameraPosition) / Time.deltaTime;

            // Get the direction of movement
            Vector3 moveDirection = velocity.normalized;

            // Update lastCameraPosition
            lastCameraPosition = cameraTransform.position;
        }
        else
        {
            Debug.LogWarning("Camera transform is not assigned to the HolsterTracker script!");
        }
        if (inputActionReference != null)
        {
            // Get forward movement input from the XR Controller thumbstick
            Vector2 thumbstickInput = thumbstickAction.ReadValue<Vector2>();


            // Rotate the holster around the player based on the input
            RotateHolster(thumbstickInput.x, thumbstickInput.y);

        }

    }
    private void RotateHolster(float thumbstickHorizontalInput, float thumbstickVerticalInput)
    {
        // Calculate rotation angles based on the thumbstick input
        float rotationAmountHorizontal = thumbstickHorizontalInput * rotationSpeed * Time.deltaTime;
        float rotationAmountVertical = thumbstickVerticalInput * rotationSpeed * Time.deltaTime;

        // Combine the horizontal and vertical rotation amounts
        float totalRotationAmount = (rotationAmountHorizontal + rotationAmountVertical) / 2f;

        // Get the forward direction of the player
        Vector3 playerForward = cameraTransform.forward;
        playerForward.y = 0f; // Ignore vertical component

        // Rotate the holster around the player's position, based on player forward direction
        for (int i = 0; i < holsters.Count; i++)
        {
            transform.RotateAround(holsters[i].transform.position, pivotPoint.position, totalRotationAmount);
        }
        //transform.RotateAround(player.position, playerForward.normalized, totalRotationAmount);
        //Debug.Log("Players position x: " + player.position.x + " y: " + player.position.y);
    }
}
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

        void Update()
        {
            // Check if the camera transform is assigned
            if (cameraTransform != null)
            {
                // Calculate the player's velocity based on the change in camera position
                Vector3 velocity = (cameraTransform.position - lastCameraPosition) / Time.deltaTime;

                // Get the direction of movement
                Vector3 moveDirection = velocity.normalized;

                // Rotate the holsters towards the player's movement direction
                RotateHolster(moveDirection);

                // Update lastCameraPosition
                lastCameraPosition = cameraTransform.position;
            }
            else
            {
                Debug.LogWarning("Camera transform is not assigned to the HolsterTracker script!");
            }
 
            if (inputActionReference != null)
            {
                // Get thumbstick input from the XR Controller
                Vector2 thumbstickInput = thumbstickAction.ReadValue<Vector2>();

                // Rotate the holsters around the player based on the input
                RotateHolster(thumbstickInput);
            }
        }
    }
    private void RotateHolster(Vector2 thumbstickInput)
    {
        // Get the forward direction of the player in XR space
        Vector3 forwardDirection = cameraTransform.forward;
        forwardDirection.y = 0f; // Ignore vertical component

        // Calculate the rotation angle based on the thumbstick input
        Quaternion rotation = Quaternion.AngleAxis(thumbstickInput.x * rotationSpeed * Time.deltaTime, Vector3.up);

        // Rotate the forward direction according to the thumbstick input
        forwardDirection = rotation * forwardDirection;

        // Smoothly rotate each holster towards the new forward direction
        for (int i = 0; i < holsters.Count; i++)
        {
            holsters[i].rotation = Quaternion.LookRotation(forwardDirection, Vector3.up);
        }
    }
}
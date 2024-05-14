using UnityEngine;

public class WizardXR : MonoBehaviour
{

    public GameObject xrOrigin;

    // Update is called once per frame
    void Update()
    {
        // Get the current position of the game object
        Vector3 currentPosition = transform.position;

        // Update the X and Z coordinates to match xrOrigin
        currentPosition.x = xrOrigin.transform.position.x;
        currentPosition.z = xrOrigin.transform.position.z;

        // Update the position of the game object
        transform.position = currentPosition;
    }
}

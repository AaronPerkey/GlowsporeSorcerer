using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class skull_animate : MonoBehaviour
{
      void Update()
    {
        transform.position = new Vector3(0, 0.5f*(Mathf.Sin(Time.time))+1.0f, 0);
    }
}

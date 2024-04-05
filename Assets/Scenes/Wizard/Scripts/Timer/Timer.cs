using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
//using Valve.VR.InteractionSystem;

public class Timer : MonoBehaviour
{

    public float timeRemaining;
    public bool timeIsRunning = false;

    private void Awake()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        if (timeIsRunning)
        {
            if (timeRemaining >= 0)
            {
                timeRemaining -= Time.deltaTime;
            }
            else
            {
                timeIsRunning = false;
            }

        }
    }


    public void DelaySeconds(float _timeRemaining)
    {
        timeRemaining = _timeRemaining;
        timeIsRunning = true;

    }






}
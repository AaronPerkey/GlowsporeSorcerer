using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Money : MonoBehaviour
{
    public int moneyAmount = 0;
    [HideInInspector]
    public bool isColliding = false;

    private void Update()
    {
        isColliding = false;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Money"))
        {
            if (isColliding) { return; }
            isColliding = true;
            Destroy(other.gameObject);
            addMoney();
            Debug.Log(moneyAmount);
        }
    }

    public void addMoney()
    {
        moneyAmount++;
    }

    public void addMoney(int amount)
    {
        moneyAmount += amount;
    }

    public void removeMoney()
    {
        moneyAmount--;
    }

    public void removeMoney(int amount)
    {
        moneyAmount -= amount;
    }

    public void setMoney(int amount)
    {
        moneyAmount = amount;
    }
}

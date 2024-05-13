using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Money : MonoBehaviour
{
    public int moneyAmount = 0;
    [HideInInspector]
    public bool isColliding = false;
    public TextMeshProUGUI moneyLabel;
    public AudioClip moneyAudio;

    private void Update()
    {
        isColliding = false;
        moneyLabel.text = moneyAmount.ToString();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Money"))
        {
            if (isColliding) { return; }
            isColliding = true;
            Destroy(other.gameObject);
            addMoney();
            AudioSource.PlayClipAtPoint(moneyAudio, transform.position, 0.25f);
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

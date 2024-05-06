using System.Collections;
using System.Collections.Generic;
using System.Runtime.ExceptionServices;
using Unity.VisualScripting;
using UnityEngine;

public class CoinDropper : MonoBehaviour
{
    public Transform enemy;
    public Rigidbody coin;
    private int changceToDrop;
    private int numberOfCoins;
    private float m_Thrust = 20f;

    void Start()
    {
        coin = GetComponent<Rigidbody>();
    }

    public int Amount()
    {
        int coinAmount;
        if (Random.Range(0, 1) == 1)
        {
            coinAmount = Random.Range(0, 5);
        }
        else
        {
            coinAmount = 0;
        }

        return coinAmount;
    }

    public void CoinSpawner()
    {
        Instantiate(coin, enemy.transform.position, Quaternion.identity);
        coin.AddForce(transform.up * m_Thrust);
    }

    public void CoinDrop()
    {
        int numberOfCoins = Amount();
        for (int i = 0; i < numberOfCoins; i++)
        {
            CoinSpawner();
        }

    }
}

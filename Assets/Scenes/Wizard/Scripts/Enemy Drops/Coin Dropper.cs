using System.Collections;
using System.Collections.Generic;
using System.Runtime.ExceptionServices;
using Unity.VisualScripting;
using UnityEngine;

public class CoinDropper : MonoBehaviour
{
    public Transform enemy;
    public GameObject coin;
    private int changceToDrop;
    private int numberOfCoins;
    private float m_Thrust = 2f;
    DungeonCreator m_Creator;

    void Start()
    {
        m_Creator = GetComponent<DungeonCreator>();
    }

    private void Update()
    {
    }

    public int Amount()
    {
        int maybe = Random.Range(0, 5);
        int coinAmount;
        if (maybe >= 3)
        {
            coinAmount = Random.Range(1, m_Creator.floorNumber);
        }
        else
        {
            coinAmount = 0;
        }

        return coinAmount;
    }

    public void CoinSpawner()
    {
        
        GameObject spawnedCoin = Instantiate(coin);
        spawnedCoin.transform.position = enemy.position;
        spawnedCoin.GetComponent<Rigidbody>().velocity = enemy.up * m_Thrust;
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

using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class Product : MonoBehaviour
{

    public GameObject player;
    public int price;
    public enum ProductType
    {
        HealthUpgrade,
        Heal,
        AttackUpgrade
    }
    public ProductType type;
    public TextMeshProUGUI shopText;
    Money money;

    // Start is called before the first frame update
    void Start()
    {
        money = player.GetComponent<Money>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("hand"))
        {
            if(money.moneyAmount >= price)
            {
                if(type == ProductType.HealthUpgrade)
                {
                    Debug.Log("buy health upgrade");
                    shopText.text = "Pleasure doing business pal";
                }
                else if(type == ProductType.Heal)
                {
                    Debug.Log("buy heal");
                    shopText.text = "Pleasure doing business pal";
                }
                else if(type == ProductType.AttackUpgrade)
                {
                    Debug.Log("buy attack upgrade");
                    shopText.text = "Pleasure doing business pal";
                }
            }
        }
    }

}

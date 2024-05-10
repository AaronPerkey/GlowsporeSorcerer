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
    public TypewriterEffect typewriterEffect;

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

                    typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                    StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                    Debug.Log("buy health upgrade");
                    money.moneyAmount -= price;
                    

                }
                else if(type == ProductType.Heal)
                {

                    typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                    StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                    Debug.Log("buy heal");
                    
                }
                else if(type == ProductType.AttackUpgrade)
                {

                    typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                    StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                    Debug.Log("buy attack upgrade");

                }
            }
            else
            {
                typewriterEffect.PrepareForNewText(shopText.gameObject);
                StartCoroutine(ShowText("Sorry bud looks like you're a little broke. Better go kill some more monsters"));
            }
        }
    }

    // Coroutine to display text with typewriter effect
    IEnumerator ShowText(string text)
    {
        yield return new WaitForSeconds(0.5f); // Optional delay before starting the typewriter effect
        typewriterEffect.GetComponent<TextMeshProUGUI>().text = text;
    }

}

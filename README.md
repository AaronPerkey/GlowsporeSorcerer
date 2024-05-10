# GlowsporeSorcerer
VR class semester long project
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
using System.Collections;
using System.Collections.Generic;
using TMPro;
using Unity.VisualScripting;
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
    PlayerPH playerPH;
    public TypewriterEffect typewriterEffect;

    // Start is called before the first frame update
    void Start()
    {
        money = player.GetComponent<Money>();
        playerPH = player.GetComponent<PlayerPH>();
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("hand"))
        {
            Shop();
        }
    }

    // Coroutine to display text with typewriter effect
    IEnumerator ShowText(string text)
    {
        yield return new WaitForSeconds(0.5f); // Optional delay before starting the typewriter effect
        typewriterEffect.GetComponent<TextMeshProUGUI>().text = text;
    }

    public void Shop()
    {
        if (money.moneyAmount >= price)
        {
            if (type == ProductType.HealthUpgrade)
            {

                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                playerPH.IncreasePlayerHealth();
                money.moneyAmount -= price;
                Debug.Log("health: " + playerPH.health.maxHealth);

            }
            else if (type == ProductType.Heal)
            {
                Debug.Log("Hit Heal");
                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                playerPH.HealPlayerToMaxHealth();
                money.moneyAmount -= price;
                Debug.Log("heal: " + playerPH.health.currentHealth);
            }
            else if (type == ProductType.AttackUpgrade)
            {
                Debug.Log("Hit Attack");
                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                StartCoroutine(ShowText("Pleasure doing business pal")); // Coroutine to show text with delay
                playerPH.IncreasePlayerDamage();
                Debug.Log("Zap Damage: " + playerPH.zapSpell.damage);
                money.moneyAmount -= price;

            }
        }
        else
        {
            typewriterEffect.PrepareForNewText(shopText.gameObject);
            StartCoroutine(ShowText("Sorry bud looks like you're a little broke. Better go kill some more monsters"));
        }
    }

}
//---------------------------------------------------------------------------------------------------------------------------------------------------------

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerPH : MonoBehaviour
{
    public ZapSpell zapSpell;
    public FireSpell fireSpell;
    public SwordCollision swordCollision;

    public Health health;


    private void Awake()
    {
        health = GetComponent<Health>();

        //set inital damage
        swordCollision.damage = 0;
        zapSpell.damage = 5;
        fireSpell.damage = 1;
    }
    public void IncreasePlayerDamage()
    {
        swordCollision.damage += 2;
        zapSpell.damage += 2;
        fireSpell.damage += 2;
    }

    public void IncreasePlayerHealth()
    {
        health.maxHealth += 10;
    }

    public void HealPlayerToMaxHealth()
    {
        health.currentHealth = health.maxHealth;
    }
}

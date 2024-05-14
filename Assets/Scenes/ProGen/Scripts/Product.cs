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


    public void Shop()
    {
        if (money.moneyAmount >= price)
        {
            if (type == ProductType.HealthUpgrade)
            {

                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                typewriterEffect.GetComponent<TextMeshProUGUI>().text = "Pleasure doing business pal";
                playerPH.IncreasePlayerHealth();
                money.moneyAmount -= price;
                Debug.Log("health: " + playerPH.health.maxHealth);

            }
            else if (type == ProductType.Heal)
            {
                Debug.Log("Hit Heal");
                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                typewriterEffect.GetComponent<TextMeshProUGUI>().text = "Pleasure doing business pal";
                playerPH.HealPlayerToMaxHealth();
                money.moneyAmount -= price;
                Debug.Log("heal: " + playerPH.health.currentHealth);
            }
            else if (type == ProductType.AttackUpgrade)
            {
                Debug.Log("Hit Attack");
                typewriterEffect.PrepareForNewText(shopText.gameObject); // Call typewriter effect with the gameObject reference
                typewriterEffect.GetComponent<TextMeshProUGUI>().text = "Pleasure doing business pal";
                playerPH.IncreasePlayerDamage();
                Debug.Log("Zap Damage: " + playerPH.zapSpell.damage);
                money.moneyAmount -= price;

            }
        }
        else
        {
            typewriterEffect.PrepareForNewText(shopText.gameObject);
            typewriterEffect.GetComponent<TextMeshProUGUI>().text = "Sorry bud looks like you're a little broke. Better go kill some more monsters";
        }
    }
}
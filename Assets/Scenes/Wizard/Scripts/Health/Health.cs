using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Health : MonoBehaviour
{
    [SerializeField] public float maxHealth;
    public float currentHealth;
    [SerializeField] public Healthbar healthbar;
    SkinnedMeshRenderer skinnedMeshRenderer;

    public float blinkIntensity;
    public float blinkDuration;
    float blinkTimer;

    // Start is called before the first frame update
    void Start()
    {
        currentHealth = maxHealth;
        skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer>();


    }

    public void TakeDamage(float damage)
    {
        currentHealth -= damage;
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
        blinkTimer = blinkDuration;
    }

    // Update is called once per frame
    void Update()
    {
        healthbar.UpdateHealthbar(maxHealth, currentHealth);
        blinkTimer -= Time.deltaTime;
        float lerp = Mathf.Clamp01(blinkTimer / blinkDuration);
        float intensity = (lerp * blinkIntensity) + 1.0f;
        skinnedMeshRenderer.material.color = Color.white * intensity;

    }
}

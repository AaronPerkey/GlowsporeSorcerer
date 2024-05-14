using UnityEngine;
using UnityEngine.UI;

public class Healthbar : MonoBehaviour
{
    [SerializeField] private Image _healthSprite;
    [SerializeField] private float _reducedSpeed = 2;
    private float _target = 1;
    private Camera _cam;

    // Start is called before the first frame update
    void Start()
    {
        _cam = Camera.main;
    }

    public void UpdateHealthbar(float maxHealth, float currentHealth)
    {
        _target = currentHealth / maxHealth;
    }

    // Update is called once per frame
    void Update()
    {
        //transform.rotation = Quaternion.LookRotation(transform.position - _cam.transform.position);
        transform.LookAt(_cam.transform);
        _healthSprite.fillAmount = Mathf.MoveTowards(_healthSprite.fillAmount, _target, _reducedSpeed * Time.deltaTime);
    }
}

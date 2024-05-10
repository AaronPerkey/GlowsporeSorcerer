using System.Collections;
using UnityEngine;
using TMPro;

[RequireComponent(typeof(TMP_Text))]
public class TypewriterEffect : MonoBehaviour
{
    private TMP_Text _textBox;

    private Coroutine _typewriterCoroutine;

    [Header("Typewriter Settings")]
    [SerializeField] private float charactersPerSecond = 20;

    private WaitForSeconds _delay;

    private void Awake()
    {
        _textBox = GetComponent<TMP_Text>();
        _delay = new WaitForSeconds(1f / charactersPerSecond);
    }

    public void PrepareForNewText(GameObject obj)
    {
        if (obj == gameObject)
        {
            if (_typewriterCoroutine != null)
                StopCoroutine(_typewriterCoroutine);

            _typewriterCoroutine = StartCoroutine(Typewriter());
        }
    }

    private IEnumerator Typewriter()
    {
        int visibleCount = 0;
        int totalVisibleCharacters = _textBox.text.Length;

        while (visibleCount < totalVisibleCharacters)
        {
            visibleCount++;
            _textBox.maxVisibleCharacters = visibleCount;
            yield return _delay;
        }
    }
}

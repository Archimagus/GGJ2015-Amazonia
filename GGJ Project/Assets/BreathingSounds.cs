using UnityEngine;
using System.Collections.Generic;

[RequireComponent(typeof(AudioSource))]
public class BreathingSounds : MonoBehaviour
{
	public float fadeInAtExertionLevel = 1.0f;
	public float fadeOutAtExertionLevel = 4.0f;
	public float fadeRate = 1.0f;
	CharacterMovement movement;

	void Start()
	{
		movement = GetComponentInParent<CharacterMovement>();
	}

	void Update()
	{
		float ex = movement.ExertionTime;
		if (ex > fadeInAtExertionLevel && ex < fadeOutAtExertionLevel)
		{
			if (ex < fadeInAtExertionLevel + fadeRate)
			{
				audio.volume = Mathf.Lerp(0f, 1f, ex - fadeInAtExertionLevel / fadeRate);
			}
			else if (ex > fadeOutAtExertionLevel - fadeRate)
			{
				audio.volume = Mathf.Lerp(1f, 0f, fadeOutAtExertionLevel - ex / fadeRate);
			}
			else
			{
				audio.volume = 1.0f;
			}
		}
		else
		{
			audio.volume = 0f;
		}
	}
}

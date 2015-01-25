using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public enum SoundType
{
	SoundEffect,
	Ambiance,
	Voice,
	Music
}
public static class AudioManager 
{
	private static float _soundEffects = 1;
	private static float _ambiance = 1;
	private static float _voice = 1;
	private static float _music = 1;

	public static float SoundEffectsVolume
	{
		get 
		{
			return _soundEffects;
		} 
		set 
		{
			_soundEffects = value;
			PlayerPrefs.SetFloat("effectsVolume", value);
		} 
	}
	public static float AmbianceVolume
	{
		get
		{
			return _ambiance;
		}
		set
		{
			_ambiance = value;
			PlayerPrefs.SetFloat("ambienceVolume", value);
		}
	}
	public static float VoiceVolume
	{
		get
		{
			return _voice;
		}
		set
		{
			_voice = value;
			PlayerPrefs.SetFloat("voiceVolume", value);
		}
	}
	public static float MusicVolume
	{
		get
		{
			return _music;
		}
		set
		{
			_music = value;
			PlayerPrefs.SetFloat("musicVolume", value);
		}
	}

	static AudioManager()
	{
		_soundEffects = PlayerPrefs.GetFloat("effectsVolume", 1.0f);
		_ambiance = PlayerPrefs.GetFloat("ambienceVolume", 1.0f);
		_voice = PlayerPrefs.GetFloat("voiceVolume", 1.0f);
		_music = PlayerPrefs.GetFloat("musicVolume", 1.0f);
	}

	private static Queue<AudioSource> AudioSources = new Queue<AudioSource>();
	/// <summary>
	/// Play an audio clip at a position
	/// </summary>
	/// <param name="This">the source of the sound "this.PlaySoundEffect(...)"</param>
	/// <param name="clip">the audio clip you wish to play</param>
	/// <param name="type">what type of sound is it</param>
	/// <param name="location">where do you want the sound played, leave null to have the sound follow this game object</param>
	public static void PlaySoundEffect(this MonoBehaviour This, AudioClip clip, SoundType type = SoundType.SoundEffect, Vector3? location = null)
	{
		AudioSource source;
		if (AudioSources.Count > 0)
		{
			source = AudioSources.Dequeue();
		}
		else
		{
			var go = new GameObject("soundEffectDummy");
			source = go.AddComponent<AudioSource>();
			source.rolloffMode = AudioRolloffMode.Linear;
			GameObject.DontDestroyOnLoad(go);
		}
		source.gameObject.SetActive(true);
		if (!location.HasValue)
		{
			location = This.transform.position;
			source.transform.parent = This.transform;
			source.transform.localPosition = Vector3.zero;
		}
		else
		{
			source.transform.position = location.Value;
		}
		switch (type)
		{
			case SoundType.SoundEffect:
				source.volume = SoundEffectsVolume;
				break;
			case SoundType.Ambiance:
				source.volume = AmbianceVolume;
				break;
			case SoundType.Voice:
				source.volume = VoiceVolume;
				break;
			case SoundType.Music:
				source.volume = MusicVolume;
				break;
			default:
				source.volume = SoundEffectsVolume;
				break;
		}
		source.clip = clip;
		source.Play();
		This.StartCoroutine(requeueSource(source));
	}
	static IEnumerator requeueSource(AudioSource source)
	{
		yield return new WaitForSeconds(source.clip.length);
		source.transform.parent = null;
		source.gameObject.SetActive(false);
		AudioSources.Enqueue(source);
	}
}

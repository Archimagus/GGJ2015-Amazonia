using UnityEngine;
using System.Collections;

[AddComponentMenu("Dungeon/Generic/RandomizedAudioLoop")]
public class RandomizedAudioLoop : MonoBehaviour
{
	// Start playing the audio at level start?
	public bool playOnAwake = false;
	// Loop the audio automatically?
	public bool loop = true;
	// If looping, continue for how long?
	public float loopDuration = float.PositiveInfinity;
	// Min and Max random delay from the end of one clip to the start of the next if looping.
	public float minRepeadDelay = 0.0f;
	public float maxRepeadDelay = 0.0f;
	// Apply the delay on the first sound?
	public bool delayOnFirst = false;
	// What type of sound does this represent?
	public SoundType soundType = SoundType.SoundEffect;

	// Random pitch adjustment on each play of the sound.
	[Range(-0.5f, 0.0f)]
	public float maxPitchUp = 0;
	[Range(0.0f, 0.5f)]
	public float maxPitchDown = 0;
	// Randomize the volume on each play of the sound.
	[Range(1.0f,2.0f)]
	public float maxVolumeUp = 1;
	[Range(0.0f,1.0f)]
	public float maxVolumeDown = 1;

	// List of clips to randomly chose from for each play.
	public AudioClip[] Clips;


	AudioSource source;
	bool playing = false;
	float defaultPitch;
	float startTime;
	void Awake()
	{
		var go = new GameObject("RandomAudioLoopSource");
		go.transform.parent = transform;
		go.transform.localPosition = Vector3.zero;
		go.transform.localRotation = Quaternion.identity;
		source = go.AddComponent<AudioSource>();
		source.loop = false;
		source.rolloffMode = AudioRolloffMode.Linear;
		defaultPitch = source.pitch;
	}
	void Start()
	{
		if (playOnAwake)
			Play();
	}

	// Start playing.
	// this can be called from an animation event with loop set to false to play for instance foot steps.
	public void Play()
	{
		playing = true;
		StopCoroutine(LoopClips());
		StartCoroutine(LoopClips());
	}
	// Stop playing immediatly as well as canceling the loop.
	public void Stop()
	{
		playing = false;
		source.Stop();
	}

	IEnumerator LoopClips()
	{
		startTime = Time.time;
		if (delayOnFirst)
			yield return new WaitForSeconds(Random.Range(minRepeadDelay, maxRepeadDelay));

		while (playing && Clips.Length > 0 && Time.time - startTime < loopDuration)
		{
			float volume = 1;
			switch (soundType)
			{
				case SoundType.SoundEffect:
					volume = AudioManager.SoundEffectsVolume;
					break;
				case SoundType.Ambiance:
					volume = AudioManager.AmbianceVolume;
					break;
				case SoundType.Voice:
					volume = AudioManager.VoiceVolume;
					break;
				case SoundType.Music:
					volume = AudioManager.MusicVolume;
					break;
				default:
					volume = AudioManager.SoundEffectsVolume;
					break;
			}

			var clip = Clips[Random.Range(0, Clips.Length)];
			source.clip = clip;
			source.pitch = defaultPitch + Random.Range(maxPitchDown, maxPitchUp);
			source.volume = volume * Random.Range(maxVolumeDown, maxVolumeUp);
			source.Play();
			if (!loop)
				break;
			yield return new WaitForSeconds(clip.length + Random.Range(minRepeadDelay, maxRepeadDelay));
		}
	}
}

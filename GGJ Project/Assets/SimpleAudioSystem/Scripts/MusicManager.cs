using UnityEngine;
using System.Collections;
using System;

[AddComponentMenu("Audio/Music Manager")]
public class MusicManager : MonoBehaviour 
{
	[Serializable]
	public class MusicTrack
	{
		[Serializable]
		public class Clip
		{
			public AudioClip clip;
			public float length;
			public bool valid;
		}
		public string Name;
		public Clip[] Clips;

		private double nextClipTime = 0;
		private static double startTime = 0;

		public float FadeInTime { get; set; }
		private float _fadeStartTime;
		private bool volumeFade = true;
		private float Volume=-1;

		private int source = 0;
		private AudioSource[] sources = new AudioSource[2];
		private bool valid = false;

		internal void Start(GameObject gameObject)
		{
			if (Clips.IsNullOrEmpty())
			{
				Debug.Log("There are no audio clips for track " + Name + " track will not play.");
				return;
			}
			foreach (var clip in Clips)
			{
				if(clip.clip == null)
				{
					Debug.LogError(Name + " has an uninitialized clip.  Track will not play.");
					return;
				}
			}
			valid = true;
			int i = 0; 
			while (i < 2)
			{ 
				GameObject child = new GameObject(Name + i.ToString());
				child.transform.parent = gameObject.transform;
				child.transform.localPosition = Vector3.zero;
				sources[i] = child.AddComponent(typeof(AudioSource)) as AudioSource; 
				sources[i].playOnAwake = false;
				i++; 
			}
			if (startTime == 0)
			{
				startTime = AudioSettings.dspTime + 1.0f;
			}
			nextClipTime = startTime;
			_fadeStartTime = Time.time;
		}

		public void TryQueueRandom(float volume)
		{
			if (!valid)
				return;
			var v = DoIntroFade(volume);
			sources[0].volume = v;
			sources[1].volume = v;

			var time = AudioSettings.dspTime;
			if (time + 2.0f > nextClipTime)
			{
				int c = UnityEngine.Random.Range(0, Clips.Length);
				Clip clip = Clips[c];
				if (clip.length == 0) clip.length = clip.clip.length;
				sources[source].clip = clip.clip;
				sources[source].PlayScheduled(nextClipTime);
				source = Math.Abs(source-1);
				sources[source].SetScheduledEndTime(nextClipTime);
				nextClipTime += clip.length;
			}
		}

		private float DoIntroFade(float volume)
		{
			float v = volume;
			if (volumeFade)
			{
				var fade = Mathf.Lerp(0.0f, 1.0f, (Time.time - _fadeStartTime) / FadeInTime);
				v = volume * fade;
				if (Mathf.Abs(Volume - volume) < 0.1f)
				{
					volumeFade = false;
				}
			}
			return v;
		}
	}

	public float FadeInTime = 1.0f;
	public MusicTrack[] Tracks;

	void Start () 
	{
		if (!Tracks.IsNullOrEmpty())
		{
			foreach (var t in Tracks)
			{
				t.FadeInTime = FadeInTime;
				t.Start(gameObject);
			}
		}
	}
	
	void Update ()
	{
		QueueCLips();
	}

	void QueueCLips()
	{
		if (!Tracks.IsNullOrEmpty())
		{
			foreach (var t in Tracks)
			{
				t.TryQueueRandom(AudioManager.MusicVolume);
			}
		}
	}
}

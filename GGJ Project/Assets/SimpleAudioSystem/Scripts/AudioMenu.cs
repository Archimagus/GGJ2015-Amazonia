using UnityEngine;
using System.Collections;

public class AudioMenu : MonoBehaviour
{
	public AudioClip soundEffectSound;
	public AudioClip ambianceSound;
	public AudioClip voiceOverSound;

	bool sountEffectVolumeChange;
	bool ambianceVolumeChange;
	bool voiceVolumeChange;
	void OnGUI()
	{
		var e = Event.current;
		if ((e.type == EventType.mouseUp))
			MouseUp();

		GUILayout.BeginArea(new Rect(Screen.width / 2 - 150, Screen.height / 2 - 100, 300, 200), "Audio Options", GUI.skin.box);
		GUILayout.Space(20);
		GUILayout.Label("Music Volume");
		AudioManager.MusicVolume = GUILayout.HorizontalSlider(AudioManager.MusicVolume, 0.0f, 1.0f);
		GUILayout.Label("Sound Effects Volume");
		float oldVolume = AudioManager.SoundEffectsVolume;
		AudioManager.SoundEffectsVolume = GUILayout.HorizontalSlider(oldVolume, 0.0f, 1.0f);
		if (AudioManager.SoundEffectsVolume != oldVolume)
			sountEffectVolumeChange = true;
		GUILayout.Label("Ambiance Volume");
		oldVolume = AudioManager.AmbianceVolume;
		AudioManager.AmbianceVolume = GUILayout.HorizontalSlider(AudioManager.AmbianceVolume, 0.0f, 1.0f);
		if (AudioManager.AmbianceVolume != oldVolume)
			ambianceVolumeChange = true;
		GUILayout.Label("Voice Over Volume");
		oldVolume = AudioManager.VoiceVolume;
		AudioManager.VoiceVolume = GUILayout.HorizontalSlider(AudioManager.VoiceVolume, 0.0f, 1.0f);
		if (AudioManager.VoiceVolume != oldVolume)
			voiceVolumeChange = true;
		GUILayout.EndArea();
	}
	void MouseUp()
	{
		if (sountEffectVolumeChange && soundEffectSound != null)
		{
			sountEffectVolumeChange = false;
			this.PlaySoundEffect(soundEffectSound, SoundType.SoundEffect);
		}
		if (ambianceVolumeChange && ambianceSound != null)
		{
			ambianceVolumeChange = false;
			this.PlaySoundEffect(ambianceSound, SoundType.Ambiance);
		}
		if (voiceVolumeChange && voiceOverSound != null)
		{
			voiceVolumeChange = false;
			this.PlaySoundEffect(voiceOverSound, SoundType.Voice);
		}
	}
}

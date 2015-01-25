using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;

[CustomEditor(typeof(MusicManager))]
public class MusicManagerEditor : Editor
{
	bool helpFoldout = false;
	void OnEnable()
	{
	}
	public override void OnInspectorGUI()
	{
		GUI.changed = false;
		MusicManager manager = target as MusicManager;
		if(GUILayout.Button("Reset all to Original Lengths"))
		{
			foreach (var track in manager.Tracks)
			{
				foreach (var clip in track.Clips)
				{
					clip.length = clip.clip.length;
				}
			}
		}
		bool allValid = true;
		float shortestClip = float.MaxValue;
		foreach (var track in manager.Tracks)
		{
			foreach (var clip in track.Clips)
			{
				if (clip.length == 0)
					clip.length = clip.clip.length;
				if (clip.length < shortestClip)
					shortestClip = clip.length;
			}
		}
		foreach (var track in manager.Tracks)
		{
			foreach (var clip in track.Clips)
			{
				if (clip.length % shortestClip != 0)
				{
					clip.valid = false;
					allValid = false;
				}
				else
					clip.valid = true;
			}
		}
		DrawDefaultInspector();
		if(!allValid)
		{
			var color = GUI.color;
			GUI.color = Color.red;

			EditorGUILayout.LabelField("There are some invalid clip lengths. ", EditorStyles.whiteLabel);
			EditorGUILayout.LabelField("Please make sure all clips have lengths that ", EditorStyles.whiteLabel);
			EditorGUILayout.LabelField("are multiples of eachother to ensure seamless looping.", EditorStyles.whiteLabel);

			GUI.color = color;
		}
		helpFoldout = EditorGUILayout.Foldout(helpFoldout, "Help");
		if(helpFoldout)
		{
			EditorGUILayout.LabelField(@"Audio Clips should all have lengths that are multiples of eachother. 

For example if the shortest clip is of length 10.1s then all other clips should be of lenghts like 10.1, 20.2, 30.3, Etc.

Also, MP3's usually have some dead space at the end of the file.  For a seamless loop use oggvorbis or wav files, or manually trim the lengh of the clips using the provided length field."
				, EditorStyles.wordWrappedLabel);
		}
		if (GUI.changed)
			EditorUtility.SetDirty(target);
	}
}

[CustomPropertyDrawer(typeof(MusicManager.MusicTrack.Clip))]
public class ClipDrawer : PropertyDrawer
{
	public override void OnGUI(Rect position, SerializedProperty property, GUIContent label)
	{
		EditorGUI.BeginProperty(position, label, property);
		
		var clipRect = new Rect(position.x, position.y, 150, position.height);
		var lengthRect = new Rect(position.x + 110, position.y, position.width - 130, position.height);
		var resetButtonRect = new Rect(position.x + position.width - position.height, position.y+2, position.height-2, position.height-2);

		EditorGUI.PropertyField(clipRect, property.FindPropertyRelative("clip"), GUIContent.none);
		var color = GUI.backgroundColor;
		bool valid = property.FindPropertyRelative("valid").boolValue;
		GUI.backgroundColor = valid ? Color.Lerp(Color.green, Color.white, 0.5f) : Color.Lerp(Color.red, Color.white, 0.5f);
		EditorGUI.PropertyField(lengthRect, property.FindPropertyRelative("length"), GUIContent.none);
		GUI.backgroundColor = color;
		if(GUI.Button(resetButtonRect, new GUIContent("~", "Reset clip length")))
		{
			property.FindPropertyRelative("length").floatValue = (property.FindPropertyRelative("clip").objectReferenceValue as AudioClip).length;
		}


		EditorGUI.EndProperty();
	}
}
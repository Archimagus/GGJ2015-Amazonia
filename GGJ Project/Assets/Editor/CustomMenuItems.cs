using UnityEngine;
using UnityEditor;
using System.IO;

public class CustomMenuItems : MonoBehaviour
{
	[MenuItem("GameObject/RotateLeft %q")]
	static void RotateLeft()
	{
		
		Selection.activeTransform.Rotate(0, -90 - (Selection.activeTransform.eulerAngles.y % 90), 0);
	}
	[MenuItem("GameObject/RotateLeft %q", true)]
	static bool ValidateRotateLeft()
	{
		// Return false if no transform is selected.
		return Selection.activeTransform != null;
	}
	[MenuItem("GameObject/RotateRight %e")]
	static void RotateRight()
	{
		Selection.activeTransform.Rotate(0, 90 - (Selection.activeTransform.eulerAngles.y % 90), 0);
	}
	[MenuItem("GameObject/RotateRight %e", true)]
	static bool ValidateRotateRight()
	{
		// Return false if no transform is selected.
		return Selection.activeTransform != null;
	}
	[MenuItem("GameObject/Zero Y %w")]
	static void ZeroY()
	{
		foreach (var t in Selection.transforms)
		{
			Vector3 pos = t.position;
			pos.y = 0;
			pos.x = (Mathf.Round(pos.x / 4)) * 4;
			pos.z = (Mathf.Round(pos.z / 4)) * 4;
			t.position = pos;

		}
	}
	[MenuItem("GameObject/Zero Y %w", true)]
	static bool ValidateZeroY()
	{
		// Return false if no transform is selected.
		return Selection.activeTransform != null;
	}

	[MenuItem("GameObject/RevertToPrefab &r")]
	static void RevertToPrefab()
	{
		var selection = Selection.gameObjects;

		if (selection.Length > 0)
		{
			foreach (var s in selection)
			{
				Debug.Log("Reverting " + s.name + " to prefab.");
				if (!PrefabUtility.RevertPrefabInstance(s))
				{
					Debug.Log("Cannot revert to prefab something went wrong.");
				}
			}
		}
		else
		{
			Debug.Log("Cannot revert to prefab - nothing selected");
		}
	}
}

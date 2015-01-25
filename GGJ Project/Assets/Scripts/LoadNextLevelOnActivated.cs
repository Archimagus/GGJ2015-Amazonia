using UnityEngine;
using System.Collections.Generic;

public class LoadNextLevelOnActivated : MonoBehaviour 
{
	void OnActivated()
	{
		Application.LoadLevel(Application.loadedLevel + 1);
	}
}

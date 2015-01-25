using UnityEngine;
using System.Collections.Generic;

public class LoadNextLevel : MonoBehaviour 
{
	public void LoadLevel()
	{
		Application.LoadLevel(Application.loadedLevel + 1);
	}
}

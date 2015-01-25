using UnityEngine;
using System.Collections;

public class LevelLoader : MonoBehaviour 
{
	public int levelToLoad = 0;
	
	public void LoadLevel()
	{
		Application.LoadLevel (levelToLoad);
	}
}
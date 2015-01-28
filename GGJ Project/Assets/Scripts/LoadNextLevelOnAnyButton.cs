using UnityEngine;
using System.Collections.Generic;

public class LoadNextLevelOnAnyButton : MonoBehaviour 
{
	void Update () 
	{
		if(Input.anyKeyDown)
		{
			Application.LoadLevel(Application.loadedLevel + 1);
		}
	}
}

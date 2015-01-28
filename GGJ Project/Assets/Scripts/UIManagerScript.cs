using UnityEngine;
using System.Collections;
#if UNITY_EDITOR
using UnityEditor;
#endif

public class UIManagerScript : MonoBehaviour
{
	string webPlayerUrl;
	void Start()
	{		
#if UNITY_WEBPLAYER
		webPlayerUrl = Application.absoluteURL;
		webPlayerUrl = webPlayerUrl.Substring(0, webPlayerUrl.LastIndexOf("/"));
		Debug.Log(webPlayerUrl);
#endif
	}
	public void StartGame()
	{
		Application.LoadLevel(Application.loadedLevel+1);
	}
	
	public void Credits()
	{
		Application.LoadLevel("Credits");
	}
	
	public void Exit()
	{
#if UNITY_EDITOR
		UnityEditor.EditorApplication.isPlaying = false;
#elif UNITY_WEBPLAYER
		 Application.OpenURL(webPlayerUrl);
#else
		 Application.Quit();
#endif
	}

}

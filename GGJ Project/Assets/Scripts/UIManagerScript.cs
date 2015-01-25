using UnityEngine;
using System.Collections;

public class UIManagerScript : MonoBehaviour
{
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
        Application.Quit();
    }

}

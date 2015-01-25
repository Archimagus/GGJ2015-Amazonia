using UnityEngine;
using System.Collections;

public class UIManagerScript : MonoBehaviour
{
    public void StartGame()
    {
        Application.LoadLevel("adfasdfasdf");
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

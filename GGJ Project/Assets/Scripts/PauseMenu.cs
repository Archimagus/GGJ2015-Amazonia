using UnityEngine;
using System.Collections.Generic;
using UnityEngine.EventSystems;

public class PauseMenu : MonoBehaviour 
{

	public void OnEnable()
	{
		Time.timeScale = float.Epsilon;
	}

	public void OnDisable()
	{
		Time.timeScale = 1f;
	}

	void Update()
	{
		if (Input.GetButtonDown("Cancel"))
			gameObject.SetActive(false);
	}

}

using UnityEngine;
using System.Collections;

public class SpikeStopper : MonoBehaviour {

	public GameObject spikes;
	// Use this for initialization
	void Start () 
	{
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}

	void OnTriggerStay(Collider col)
	{		
		if(col.gameObject.tag == "Chest" || col.gameObject.tag == "Boulder")
		{
			spikes.SendMessage("ResetCurrentTime");
			//spikes.ResetCurrentTime();
		}
	}
}

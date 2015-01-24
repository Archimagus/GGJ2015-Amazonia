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
		Debug.Log("Triggered Collision");
		
		if(col.gameObject.tag == "Chest")
		{
			spikes.SendMessage("ResetCurrentTime");
			//spikes.ResetCurrentTime();
		}
	}
}

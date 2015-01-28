using UnityEngine;
using System.Collections;

public class Spikes : MonoBehaviour {

	public Transform activeTarget;
	public Transform restingTarget;
	public float delay = 0;
	float currentTime = 0;
	bool activated = false;
	bool raised = false;
	bool isActive = true;
	// Use this for initialization
	void Start () 
	{
	}
	
	// Update is called once per frame
	void Update () 
	{


		if(!isActive && !activated && !raised)
			return;

		delay -= Time.deltaTime;
		if(!activated && delay < 0)
			currentTime += Time.deltaTime;

		//BEFORE SPIKES RISE
		if(currentTime > 2 && !activated)
		{
			if(!audio.isPlaying)
				audio.Play();
			activated = true;
		}

		if(activated && raised == false)
		{
			audio.Play();
			float step = 5 * Time.deltaTime;
			transform.position = Vector3.MoveTowards(this.transform.position, activeTarget.position, step);

			if(activated && transform.position == activeTarget.position)
			{
				raised = true;
			}
		}
		//AFTER THE SPIKES HAVE RISEN
		if(raised == true)
		{	
			activated = false;
			float step = 1 * Time.deltaTime;
			transform.position = Vector3.MoveTowards(this.transform.position, restingTarget.position, step);
			
			if(transform.position == restingTarget.position)
			{
				currentTime = 0;
				raised = false;
			}
		}
	}

	public void ResetCurrentTime()
	{
		currentTime = 0;
	}

	public void OnActivated()
	{
		isActive = false;
	}
	
	public void OnDeactivated()
	{
		isActive = true;
	}


}

﻿using UnityEngine;
using System.Collections;

public class DartShooter : MonoBehaviour {
	public GameObject dart;
	public float delay = 0;
	public float dartSpeed = 5;
	float currentTime = 0;
	bool activated = false;
	// Use this for initialization
	void Start () 
	{
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		delay -= Time.deltaTime;
		if(!activated && delay < 0)
			currentTime += Time.deltaTime;
		
		//BEFORE SPIKES RISE
		if(currentTime > 2 && !activated)
		{
			activated = true;
		}
		
		if(activated)
		{
			GameObject d = (GameObject)Instantiate(dart, this.transform.position, transform.rotation);
			d.transform.Rotate(new Vector3(90, 0, 0));
			d.GetComponent<Rigidbody>().velocity = transform.forward * dartSpeed;
			currentTime = 0;
			activated = false;
		}
	}
}

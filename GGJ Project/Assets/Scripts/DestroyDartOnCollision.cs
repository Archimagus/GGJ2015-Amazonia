﻿using UnityEngine;
using System.Collections;

public class DestroyDartOnCollision : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col)
	{
		Destroy(this.gameObject);
	}
}

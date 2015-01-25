using UnityEngine;
using System.Collections;

public class DestroyDartOnCollision : MonoBehaviour {

	public AudioClip impactSound;
	// Use this for initialization
	void Start () 
	{
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}

	void OnTriggerEnter(Collider col)
	{
		//this.PlaySoundEffect (impactSound, SoundType.SoundEffect, transform.position);
		Destroy(this.gameObject);
	}
}

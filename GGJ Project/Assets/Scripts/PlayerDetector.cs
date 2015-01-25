using UnityEngine;
using System.Collections;

public class PlayerDetector : MonoBehaviour {

	GameObject player;
	public ParticleSystem particle;
	public GameObject floor;
	// Use this for initialization
	void Start () 
	{
		player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () 
	{

	}

	void OnTriggerStay(Collider col)
	{
		
		if(col.gameObject.tag == "Player")
		{

			if(player.GetComponent<CharacterMovement>().IsCarryingChest() == true)
			{
				if(audio.isPlaying == false)
					audio.Play();
				floor.SendMessage("ReduceLife");
				if(particle.isStopped)
					particle.Play();
			}
		}
        
	}

	void OnTriggerExit(Collider col)
	{
		if(particle.isPlaying)
			particle.Stop();
		audio.Stop();
		floor.GetComponent<BreakableFloor>().ResetLife();
	}

}

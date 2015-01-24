using UnityEngine;
using System.Collections;

public class BreakableFloor : MonoBehaviour {

	float life = 3.0f;
	// Use this for initialization
	void Start () 
	{

		GetComponent<MeshRenderer>().renderer.material.color = new Color(life, life, life);
	}
	
	// Update is called once per frame
	void Update () 
	{
		GetComponent<MeshRenderer>().renderer.material.color = new Color(life, life, life);
		
	}

	void OnTriggerStay(Collider col)
	{
		Debug.Log("Triggered Collision");
		
		if(col.gameObject.tag == "Player")
		{
			life -= Time.deltaTime;
		}
	}
}

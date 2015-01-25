using UnityEngine;
using System.Collections;

public class DestroyDartOnCollision : MonoBehaviour {

	public GameObject impact;
	// Use this for initialization
	void Start () 
	{
	}
	
	// Update is called once per frame
	void Update () 
	{
	
	}

	void OnCollisionEnter(Collision col)
	{
		Instantiate(impact, col.transform.position, col.transform.rotation);
		Destroy(this.gameObject);
	}
}

using UnityEngine;
using System.Collections;

public class BreakableFloor : MonoBehaviour {

	public float lifeTime = 3.0f;
	public float life;
	// Use this for initialization
	void Start () 
	{
		life = lifeTime;
		GetComponent<MeshRenderer>().renderer.material.color = new Color(life/lifeTime, 0, 0, 1);
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(life < 0)
		{
			life = 0;
			Destroy(this.gameObject);
		}
		GetComponent<MeshRenderer>().renderer.material.color = new Color(life/lifeTime, 0, 0, 1);


	}

	public void ReduceLife()
	{
		life -= Time.deltaTime;
	}
	public void ResetLife()
	{
		life = lifeTime;

	}
}

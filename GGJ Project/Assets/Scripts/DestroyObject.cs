using UnityEngine;
using System.Collections;

public class DestroyObject : MonoBehaviour {

	public float destroyTimer = 1;
	void Start () 
	{
		Destroy(this.gameObject, destroyTimer);
	}
}

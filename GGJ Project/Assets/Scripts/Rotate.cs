using UnityEngine;
using System.Collections.Generic;

public class Rotate : MonoBehaviour 
{
	public Vector3 axis = Vector3.up;
	public float speed = 1.0f;
	void Update () 
	{
		transform.Rotate(axis, speed * Time.deltaTime);
	}
}

using UnityEngine;
using System.Collections.Generic;

public class KeepUpright : MonoBehaviour 
{
	public float Strength = 15f;
	void FixedUpdate()
	{
		var angle = Vector3.Angle(transform.up, Vector3.up);
		if(angle > 0)
		{
			var cross = Vector3.Cross(transform.up, Vector3.up);
			rigidbody.AddTorque(cross * Strength);
		}
	}
}

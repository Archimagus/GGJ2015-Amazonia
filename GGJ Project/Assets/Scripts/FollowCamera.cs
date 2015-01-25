using UnityEngine;
using System.Collections.Generic;

public class FollowCamera : MonoBehaviour 
{
	private Transform FollowTarget;
	public float SmoothTime = 0.2f;

	private Vector3 _offset;
	private Vector3 _currentVelocity;

	void Start()
	{
		FollowTarget = transform.parent;
		transform.parent = null;
		_offset = transform.position - FollowTarget.transform.position;
	}
	void Update () 
	{
		transform.position = Vector3.SmoothDamp(transform.position, FollowTarget.position+_offset, ref _currentVelocity, SmoothTime);
	}

}

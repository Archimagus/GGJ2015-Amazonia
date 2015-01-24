using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterController), typeof(Animator))]
public class CharacterMovement : MonoBehaviour 
{

	public float Speed = 5.0f;
	float _gravity = 9.8f;
	Vector3 _moveDirection = Vector3.zero;
	CharacterController _controller;
	Animator _animator;
	// Use this for initialization
	void Start () 
	{
		_animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		_controller = GetComponent<CharacterController>();
		if(_controller.isGrounded)
		{
			_moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
			_moveDirection = transform.TransformDirection(_moveDirection);

			_moveDirection *= Speed * Time.deltaTime;

		}
		_moveDirection.y -= _gravity * Time.deltaTime;
		_controller.Move(_moveDirection);

		_animator.SetFloat("Speed", _controller.velocity.magnitude);

	}
}

using UnityEngine;
using System.Collections;

public class CharacterMovement : MonoBehaviour 
{

	float speed = 5.0f;
	float gravity = 20.0f;
	Vector3 moveDirection = Vector3.zero;
	CharacterController controller;
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		controller = GetComponent<CharacterController>();
		if(controller.isGrounded)
		{
			moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
			moveDirection = transform.TransformDirection(moveDirection);

			moveDirection *= speed * Time.deltaTime;

		}
		moveDirection.y -= gravity * Time.deltaTime;
		controller.Move(moveDirection);
	}

}

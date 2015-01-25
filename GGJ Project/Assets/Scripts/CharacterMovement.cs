using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterController), typeof(Animator))]
public class CharacterMovement : MonoBehaviour 
{
	public float Speed = 5.0f;
	public float SlowRatio = 0.5f;
	public float RotationSpeed = 10.0f;
	public bool carryingChest = false;
	public bool pushingChest = false;
	float gravity = 20.0f;
	float canDropTimer = 0.5f;

	Vector3 moveDirection = Vector3.zero;
	CharacterController controller;
	GameObject chestDrop;
	GameObject chest;
	Animator animator;
	// Use this for initialization
	void Start () 
	{
		chestDrop = GameObject.Find("ChestDrop");
		chest = GameObject.Find("Chest");
		animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(carryingChest == true)
		{
			canDropTimer -= Time.deltaTime;

			if(canDropTimer < 0 && Input.GetKeyDown(KeyCode.Space))
			{
				chest.transform.parent = null;
				chest.transform.position = chestDrop.transform.position;
				ToggleCarryingChest();
				canDropTimer = 0.5f;
			}
		}
		if(pushingChest == true)
		{
			canDropTimer -= Time.deltaTime;
			
			if(canDropTimer < 0 && Input.GetKeyDown(KeyCode.F))
			{
				chest.transform.parent = null;
				chest.transform.position = chestDrop.transform.position;
				OffPushingChest();
				canDropTimer = 0.5f;
			}
		}
		//transform.Rotate(new Vector3(0, 90 * Time.deltaTime, 0));
		controller = GetComponent<CharacterController>();
		if(controller.isGrounded)
		{
			moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
			transform.rotation = Quaternion.RotateTowards(transform.rotation, Quaternion.LookRotation(moveDirection.normalized), RotationSpeed);

			float ratio = 1.0f;
			if(carryingChest)
				ratio = SlowRatio;
			if(pushingChest)
				ratio = SlowRatio;
			moveDirection *= ratio * Speed * Time.deltaTime;
		}
		moveDirection.y -= gravity * Time.deltaTime;
		controller.Move(moveDirection);

		animator.SetFloat("Speed", controller.velocity.magnitude / Speed);
		animator.SetBool("Pushing", Input.GetButton("Jump"));
	}

	public bool IsCarryingChest()
	{
		return carryingChest;
	}

	public void ToggleCarryingChest()
	{
		carryingChest = !carryingChest;
	}

	public bool IsPushingChest()
	{
		return pushingChest;
	}
	
	public void OnPushingChest()
	{
		pushingChest = true;
	}
	public void OffPushingChest()
	{
		pushingChest = false;
	}

	public Vector3 GetMoveDirection()
	{
		return moveDirection;
	}

	void OnControllerColliderHit(ControllerColliderHit hit)
	{
		//if(col.gameObject.tag == "Player")
		//{
		//	Debug.Log("oiaudjnf");
		//}


	}
}

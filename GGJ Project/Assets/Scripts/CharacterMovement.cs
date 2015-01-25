using UnityEngine;
using System.Collections;

public class CharacterMovement : MonoBehaviour 
{
	public float slowRatio = 0.5f;
	public bool carryingChest = false;
	public bool pushingChest = false;
	float speed = 5.0f;
	float gravity = 20.0f;
	float canDropTimer = 0.5f;
	Vector3 moveDirection = Vector3.zero;
	CharacterController controller;
	GameObject chestDrop;
	GameObject chest;
	// Use this for initialization
	void Start () 
	{
		chestDrop = GameObject.Find("ChestDrop");
		chest = GameObject.Find("Chest");
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
			moveDirection = transform.TransformDirection(moveDirection);

			float ratio = 1.0f;
			if(carryingChest)
				ratio = slowRatio;
			if(pushingChest)
				ratio = slowRatio;
			moveDirection *= ratio * speed * Time.deltaTime;
		}
		moveDirection.y -= gravity * Time.deltaTime;
		controller.Move(moveDirection);
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

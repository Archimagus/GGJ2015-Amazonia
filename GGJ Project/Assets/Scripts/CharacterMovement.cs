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
	GameObject chestNode;
	Animator animator;
	GameObject pushingObject;
	GameObject playerForward;
	Transform pickedUpObject;
	// Use this for initialization
	void Start ()
	{
		chestNode = GameObject.Find("ChestNode");
		chestDrop = GameObject.Find("ChestDrop");
		playerForward = GameObject.Find("PlayerForward");
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
				DropChest();
				canDropTimer = 0.5f;
			}
		}

		//transform.Rotate(new Vector3(0, 90 * Time.deltaTime, 0));
		controller = GetComponent<CharacterController>();
		if(controller.isGrounded)
		{
			moveDirection = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
			if(moveDirection.sqrMagnitude > 0.01f)
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

		if(pushingObject != null)
		{
			pushingChest = true;
			Vector3 V_Distance = transform.position - pushingObject.transform.position;
			float distance = V_Distance.magnitude;
			Vector3 pushDirection = V_Distance.normalized;
			Vector3 forward = this.transform.forward;
			if(Input.GetAxis("Vertical") <= 0)
			{
				pushingObject.transform.parent = null;
				pushingObject = null;
				pushingChest = false;
			}
			else
			{
				pushingObject.transform.parent = chestDrop.transform;
				pushingObject.transform.position = chestDrop.transform.position;
			}
		}

		animator.SetFloat("Speed", controller.velocity.magnitude / Speed);
	}
	public void Pushed()
	{
		animator.SetBool("Pushing", true);
	}
	public void Lifted()
	{
		animator.SetBool("Lifting", true);
		carryingChest = true;

		pickedUpObject.parent = chestNode.transform;
		pickedUpObject.position = chestNode.transform.position;
	}

	public bool IsCarryingChest()
	{
		return carryingChest;
	}

	public void PickUpChest(Transform ob)
	{
		pickedUpObject = ob;
		animator.SetTrigger("Lift");
	}
	public void DropChest()
	{
		carryingChest = false;
		animator.SetBool("Lifting", false);

		pickedUpObject.transform.parent = null;
		pickedUpObject.transform.position = chestDrop.transform.position;
	}

	public bool IsPushingChest()
	{
		return pushingChest;
	}
	
	public void OnPushingChest()
	{
		pushingChest = true;
		animator.SetTrigger("Push");
	}
	public void OffPushingChest()
	{
		pushingChest = false;
		animator.SetBool("Pushing", false);
	}

	public Vector3 GetMoveDirection()
	{
		return moveDirection;
	}

	void OnControllerColliderHit(ControllerColliderHit hit)
	{
		if(hit.transform.tag == "Chest" && playerForward.GetComponent<PickUpChest>().CanPush())
		{
			Debug.Log("got to da chest");
			pushingObject = hit.transform.gameObject;
		}
	}
}

using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterController), typeof(Animator))]
public class CharacterMovement : MonoBehaviour 
{
	public AudioClip PickUpSound;
	public AudioClip DropSound;

	public int coins = 100;
	public float Speed = 5.0f;
	public float SlowRatio = 0.5f;
	public float RotationSpeed = 10.0f;
	public bool carryingChest = false;
	public bool pushingChest = false;
	private bool performingActionAnimation = false;
	float gravity = 9.8f;
	float canDropTimer = 0.5f;
	public float ExertionTime{get; private set;}

	Vector3 moveDirection = Vector3.zero;
	CharacterController controller;
	GameObject chestNode;
	Animator animator;
	GameObject pushingObject;
	GameObject playerForward;
	Transform pickedUpObject;
	int pickedUpObjectLayer;
	// Use this for initialization
	void Start ()
	{
		chestNode = GameObject.Find("ChestNode");
		playerForward = GameObject.Find("PlayerForward");
		animator = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(carryingChest == true)
		{
			canDropTimer -= Time.deltaTime;

			if(canDropTimer < 0 && Input.GetButtonDown("Jump"))
			{
				DropChest();
				canDropTimer = 0.5f;
			}
		}

		//transform.Rotate(new Vector3(0, 90 * Time.deltaTime, 0));
		controller = GetComponent<CharacterController>();
		if (controller.isGrounded && !performingActionAnimation)
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

		}
		float speed = controller.velocity.magnitude / Speed;
		animator.SetFloat("Speed", speed);

		if(speed > 0.5f || (speed > 0.2f && carryingChest))
		{
			ExertionTime += Time.deltaTime;
		}
		else
		{
			ExertionTime -= 2*Time.deltaTime;
		}
		ExertionTime = Mathf.Clamp(ExertionTime, 0, 11);

	}
	public void Pushed()
	{
		animator.SetBool("Pushing", true);
		performingActionAnimation = false;
	}
	public void Lifted()
	{
		if (!carryingChest)
		{
			animator.SetBool("Lifting", true);
			carryingChest = true;
			performingActionAnimation = false;
			pickedUpObject.parent = chestNode.transform;
			pickedUpObject.position = chestNode.transform.position;
			pickedUpObject.rigidbody.isKinematic = true;
			pickedUpObjectLayer = pickedUpObject.gameObject.layer;
			pickedUpObject.gameObject.layer = LayerMask.NameToLayer("HeldObject");
			this.PlaySoundEffect(PickUpSound);
		}
	}

	public bool IsCarryingChest()
	{
		return carryingChest;
	}

	public void PickUpChest(Transform ob)
	{
		pickedUpObject = ob;
		animator.SetTrigger("Lift");
		performingActionAnimation = true;
	}
	public void DropChest()
	{
		carryingChest = false;
		animator.SetBool("Lifting", false);

		pickedUpObject.gameObject.layer = pickedUpObjectLayer;
		pickedUpObject.transform.parent = null;
		pickedUpObject.rigidbody.isKinematic = false;
		this.PlaySoundEffect(DropSound);
	}

	public bool IsPushingChest()
	{
		return pushingChest;
	}
	
	public void OnPushingChest()
	{
		pushingChest = true;
		animator.SetTrigger("Push");
		performingActionAnimation = true;
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
			//pushingObject = hit.transform.gameObject;
		}
	}

	public void TakeDamage(int damage)
	{
		coins -= damage;
		if (coins < 0)
			coins = 0;

		if (coins == 0)
			Application.LoadLevel("Credits");
	}
}

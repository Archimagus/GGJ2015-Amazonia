using UnityEngine;
using System.Collections;

public class PushChest : MonoBehaviour {

	CharacterController controller;
	Vector3 moveDirection = Vector3.zero;
	float speed = 5.0f;
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
			moveDirection = transform.TransformDirection(moveDirection);
			
			moveDirection *= speed * Time.deltaTime;
		}
		controller.Move(moveDirection);
	}

	void OnCollisionEnter(Collision col) 
	{
		if(col.gameObject.tag == "Player")
		{
			Debug.Log("oiaudjnf");
			
			//moveDirection =	col.gameObject.GetComponent<CharacterMovement>().GetMoveDirection();
			
			/*transform.parent.SendMessage("OnPushingChest");
			col.transform.parent = dropNode.transform;
			col.transform.position = dropNode.transform.position;*/
		}


	}

}

using UnityEngine;
using System.Collections;

public class PickUpChest : MonoBehaviour {

	GameObject chestNode;
	bool canPush = false;
	GameObject player;
	// Use this for initialization
	void Start () 
	{
		chestNode = GameObject.Find("ChestNode");
		player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () 
	{

	}

	void OnTriggerStay(Collider col)
	{
		if(col.gameObject.tag == "Chest" && !player.GetComponent<CharacterMovement>().carryingChest)
		{
			canPush = true;
			if(Input.GetButtonDown("Jump"))
			{

				float dotProduct = Vector3.Dot(col.gameObject.transform.forward, player.transform.forward);
				
				dotProduct = Mathf.Abs(dotProduct);

				dotProduct = 1 - dotProduct;
				float epsilon = 0.05f;
				bool isAligned = false;
				if(dotProduct < epsilon)
				{
					isAligned = true;
				}
				if(!isAligned)
				{
					dotProduct = Vector3.Dot(col.gameObject.transform.right, player.transform.forward);
					
					dotProduct = Mathf.Abs(dotProduct);
					
					dotProduct = 1 - dotProduct;
					
					if(dotProduct < epsilon)
					{
						isAligned = true;
					}
				}

				if(!isAligned)
					return;

				transform.parent.SendMessage("PickUpChest", col.transform);
			}

		}
		if(col.gameObject.tag == "Boulder" && !player.GetComponent<CharacterMovement>().carryingBoulder)
		{
			canPush = true;
			if(Input.GetButtonDown("Jump"))
			{
				transform.parent.SendMessage("PickUpBoulder", col.transform);
			}
		}
	}

	void OnTriggerExit(Collider col)
	{
		if(col.gameObject.tag == "Chest")
		{
			canPush = false;
		}

	}

	public bool CanPush()
	{
		return canPush;
	}
}

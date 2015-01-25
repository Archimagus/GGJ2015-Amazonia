using UnityEngine;
using System.Collections;

public class PickUpChest : MonoBehaviour {

	GameObject chestNode;
	bool canPush = false;
	GameObject player;
	// Use this for initialization
	void Start () 
	{
		chestNode = transform.parent.FindChild("ChestNode").gameObject;
		player = GameObject.Find("Player");
	}
	
	// Update is called once per frame
	void Update () 
	{

	}

	void OnTriggerStay(Collider col)
	{
		if(col.gameObject.tag == "Chest")
		{
			canPush = true;
			if(Input.GetKeyDown(KeyCode.Space))
			{

				float dotProduct = Vector3.Dot(col.gameObject.transform.forward, player.transform.forward);
				
				dotProduct = Mathf.Abs(dotProduct);
				Debug.Log("ZAxis "+dotProduct);

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
					Debug.Log("XAxis "+dotProduct);
					
					dotProduct = 1 - dotProduct;
					
					if(dotProduct < epsilon)
					{
						isAligned = true;
					}
				}



				if(!isAligned)
					return;

				transform.parent.SendMessage("OnCarryingChest");
				col.transform.parent = chestNode.transform;
				col.transform.position = chestNode.transform.position;
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

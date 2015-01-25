using UnityEngine;
using System.Collections;

public class PickUpChest : MonoBehaviour {

	GameObject chestNode;
	bool canPush = false;
	// Use this for initialization
	void Start () 
	{
		chestNode = transform.parent.FindChild("ChestNode").gameObject;
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
				transform.parent.SendMessage("ToggleCarryingChest");
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

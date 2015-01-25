using UnityEngine;
using System.Collections;

public class PickUpChest : MonoBehaviour {

	GameObject chestNode;
	GameObject dropNode;
	// Use this for initialization
	void Start () 
	{
		chestNode = transform.parent.FindChild("ChestNode").gameObject;
		dropNode = transform.parent.FindChild("ChestDrop").gameObject;
	}
	
	// Update is called once per frame
	void Update () 
	{

	}

	void OnTriggerStay(Collider col)
	{
		if(col.gameObject.tag == "Chest")
		{
			if(Input.GetKeyDown(KeyCode.Space))
			{
				transform.parent.SendMessage("ToggleCarryingChest");
				col.transform.parent = chestNode.transform;
				col.transform.position = chestNode.transform.position;
			}

		}
	}
}

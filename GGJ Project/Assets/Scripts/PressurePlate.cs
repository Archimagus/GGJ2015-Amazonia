using UnityEngine;
using System.Collections;

public class PressurePlate : MonoBehaviour {

	public GameObject[] controlledObject;
	public GameObject pressurePlate;
	public float weightTrigger = 1;
	float dropValue = 0.1f;
	bool activated = false;
	// Use this for initialization
	void Start () 
	{
		//pressurePlate = GameObject.Find("PressurePlate");
	}
	
	// Update is called once per frame
	void Update () 
	{
		
	}

	void OnTriggerStay(Collider col)
	{

	}

	void OnTriggerEnter(Collider col)
	{
		if(col.rigidbody != null && col.rigidbody.mass >= weightTrigger)
		{
			pressurePlate.transform.position = new Vector3(pressurePlate.transform.position.x, pressurePlate.transform.position.y-dropValue, pressurePlate.transform.position.z);
			activated = true;
			if(controlledObject.Length > 0)
			{
                for(int i = 0; i < controlledObject.Length; i++)
				    controlledObject[i].SendMessage("OnActivated");
			}
		}
	}

	void OnTriggerExit(Collider col)
	{
		if(col.rigidbody != null && col.rigidbody.mass >= weightTrigger)
		{
			pressurePlate.transform.position = new Vector3(pressurePlate.transform.position.x, pressurePlate.transform.position.y+dropValue, pressurePlate.transform.position.z);
			activated = false;
			 for(int i = 0; i < controlledObject.Length; i++)
				    controlledObject[i].SendMessage("OnDeactivated");
		}
	}
	public bool IsActivated()
	{
		return activated;
	}
}

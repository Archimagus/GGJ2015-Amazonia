using UnityEngine;
using System.Collections;

public class CameraControls : MonoBehaviour {

	float xSpeed = 100.0f;
	float ySpeed = 100.0f;
	public Transform player;
	// Use this for initialization
	void Start () 
	{
	
	}
	
	// Update is called once per frame
	void Update () 
	{
		float X = -xSpeed * Input.GetAxis("Mouse X")* Time.deltaTime;
		float Y = -ySpeed * Input.GetAxis("Mouse Y")* Time.deltaTime;
		transform.Translate(new Vector3(X, Y, 0));
		transform.LookAt(player.position);

		//player.LookAt(new Vector3(player.position.x, this.transform.position.y, player.position.z));
	}
}

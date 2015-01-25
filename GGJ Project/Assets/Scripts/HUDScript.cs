using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class HUDScript : MonoBehaviour {

	int maxScore = 100;
	public int score;
	
	Text scoreText;
	// Use this for initialization
	void Start () {
		score = maxScore;
		scoreText = (Text) GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
		scoreText.text = "Treasure: " + score + "/" + maxScore;
	}
}

using UnityEngine;
using System.Collections;

public class start : MonoBehaviour {

	public GameObject instructionso;
	public GameObject restarto;
	public GameObject cendo;
	public GameObject rendo;
	public GameObject quito;
	public GameObject backo;
	SpriteRenderer instructions;
	SpriteRenderer restart;
	SpriteRenderer cend;
	SpriteRenderer rend;
	SpriteRenderer quit;
	SpriteRenderer back;

	// Use this for initialization
	void Start () {

		instructions = instructionso.GetComponent<SpriteRenderer>();
		instructions.enabled = false;

		back = backo.GetComponent<SpriteRenderer>();
		back.enabled = false;
		cend = cendo.GetComponent<SpriteRenderer>();
		cend.enabled = false;
		rend = rendo.GetComponent<SpriteRenderer>();
		rend.enabled = false;
		restart = restarto.GetComponent<SpriteRenderer>();
		restart.enabled = false;
		quit = quito.GetComponent<SpriteRenderer>();
		quit.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void OnMouseDown(){
		switch(gameObject.tag){

		case "Start":
			Application.LoadLevel ("Loading");
			break;
		case "Instructions":
			instructions.enabled = true;
			back.enabled = true;
			break;
		case "Back":
			instructions.enabled = false;
			back.enabled = false;
			break;
		case "Restart":
			Application.LoadLevel("Start");
			break;
		case "Crazy":
			cend.enabled = true;
			restart.enabled = true;
			quit.enabled = true;
			break;
		case "Real":
			rend.enabled = true;
			restart.enabled = true;
			quit.enabled = true;
			break;
		case "Quit":
			print("quit");
			Application.Quit();
			break;
}
	}
}
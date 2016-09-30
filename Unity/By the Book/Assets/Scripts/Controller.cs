using UnityEngine;
using System.Collections;

public class Controller : MonoBehaviour {
	CharacterController controller;

	// Use this for initialization
	void Start () {
		controller = GetComponent<CharacterController>();	
	}
	
	// Update is called once per frame
	void Update () {
		float hVal=Input.GetAxis("Horizontal")*5;
		float vVal=Input.GetAxis("Vertical")*5;
		controller.SimpleMove (new Vector3 (hVal, 0f, vVal));
		if (controller.collisionFlags == CollisionFlags.None) {
			print("Look out below");
		}
	}

	void OnControllerColliderHit(ControllerColliderHit hit){
		//collision code here
	}
}

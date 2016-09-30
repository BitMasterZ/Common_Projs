using UnityEngine;
using System.Collections;

public class Bounce : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}

	void OnTriggerEnter(Collider col){
		print("Enter sphere");
	}
	void OnTriggerStay(Collider col){
		//print("Inside sphere");
	}
	void OnTriggerExit(Collider col){
		Destroy (this.gameObject);
	}
	// Update is called once per frame
	void Update () {
	
	}
}

using UnityEngine;
using System.Collections;

public class TriggerScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	
	//We utilize 3 functions with triggers: OnTriggerEnter, OnTriggerExit, 
	//and OnTriggerStay. The functions get called whenever their respective 
	//situations arise. We can put whatever interactivity we need in these
	//function. These functions will output to the screen when they are 
	//called
	void OnTriggerEnter(Collider other) {
        print("Entered: " + gameObject.name);
    }
	
	void OnTriggerExit(Collider other) {
        print("Exited: " + gameObject.name);
    }
	
	void OnTriggerStay(Collider other) {
        print("Inside: " + gameObject.name);
    }
}

using UnityEngine;
using System.Collections;

public class WaterMessage : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter(Collision col){
		if (col.gameObject.tag == "Player") {
			print ("In water");
		}
	}
}

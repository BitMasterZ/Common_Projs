using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {
	public Vector3 movement = Vector3.zero;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate (movement * Time.deltaTime);
	}

	void OnCollisionEnter(Collision other){
		if (other.collider.gameObject.tag == "Player") {
			other.collider.gameObject.transform.Translate(movement*Time.deltaTime);
		} else {
			print ("other");
			movement = Vector3.zero;
		}
	}
}

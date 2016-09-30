using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {
	float Speed=3;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKey (KeyCode.W)) {
			Vector3 mv=new Vector3(Speed*Mathf.Sin (this.transform.rotation.x),0f,Speed*Mathf.Cos (this.transform.rotation.z));
			transform.Translate(mv*Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.S)) {
			Vector3 mv=new Vector3(Speed*Mathf.Sin (this.transform.rotation.x),0f,Speed*Mathf.Cos (this.transform.rotation.z));
			transform.Translate(-mv*Time.deltaTime);
		}
		if (Input.GetKey (KeyCode.A)) {
			transform.Rotate(0f,-1f,0f);
		}
		if (Input.GetKey (KeyCode.D)) {
			transform.Rotate(0f,1f,0f);
		}

	}
}

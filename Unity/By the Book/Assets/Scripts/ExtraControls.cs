using UnityEngine;
using System.Collections;

public class ExtraControls : MonoBehaviour {
	float hVal,vVal,rHVal,rVVal;
	// Use this for initialization
	void Start () {
		print ("Start");
		print (GameObject.Find ("DLight").transform.position);
	}
	
	// Update is called once per frame
	void Update () {
		hVal = Input.GetAxis("LHorizontal");
		this.transform.Translate (new Vector3 (hVal, 0, 0));
	
		vVal = Input.GetAxis("LVertical");
		this.transform.Translate (new Vector3 (0, vVal, 0));

		rHVal = Input.GetAxis("RHorizontal");
		rVVal = Input.GetAxis("RVertical");
		this.transform.Rotate((new Vector3 (0, rHVal*2,rVVal*2)));

		if (Input.GetAxis("Fire1")!=0) {
			print ("Fire Torpedo");
		}
		if (Input.GetMouseButtonDown (1)) {print("Left click");}
		//0: Left
		//3: Center



	}
}

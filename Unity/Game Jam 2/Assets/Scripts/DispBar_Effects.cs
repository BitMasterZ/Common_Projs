using UnityEngine;
using System.Collections;

public class DispBar_Effects : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		this.transform.Rotate(Time.deltaTime* new Vector3(50f,0f,0f));
		    
	}
}

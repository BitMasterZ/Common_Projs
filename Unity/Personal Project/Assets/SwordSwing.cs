using UnityEngine;
using System.Collections;

public class SwordSwing : MonoBehaviour {
	Transform ptA;
	public Transform ptB;
	// Use this for initialization
	void Start () {
		ptA = this.transform;
		print ("asdasd");
	}
	
	// Update is called once per frame
	void Update () {
		//transform.rotation = Quaternion.Slerp(ptA.rotation,ptB.rotation, 0.01f);
		//this.transform.Translate (Time.deltaTime * new Vector3 (0f, -1f, 0f));
	}
}

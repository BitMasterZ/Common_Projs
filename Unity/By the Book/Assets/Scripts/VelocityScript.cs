using UnityEngine;
using System.Collections;

public class VelocityScript : MonoBehaviour {
	public float max = 50;

	// Use this for initialization
	void Start () {
		this.GetComponent<Rigidbody> ().velocity = new Vector3 (Random.Range (0, max), 0, Random.Range (0, max));
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}

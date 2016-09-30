using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour {
	public GameObject Player;
	Vector3 disp;
	// Use this for initialization
	void Start () {
		disp = Player.transform.position - transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = Player.transform.position - disp;
		//transform.rotation = Quaternion.Euler(transform.eulerAngles.x, Player.transform.eulerAngles.y/2,
		 //                                     transform.eulerAngles.z);
	}
}

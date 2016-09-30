using UnityEngine;
using System.Collections;

public class fish_control : MonoBehaviour {

	public float movement_speed = 0.1f;
	public GameObject bubble_prefab;

	// Update is called once per frame
	void Update () {
		//Movement
		if (Input.GetKey (KeyCode.RightArrow)) {
			transform.Translate (new Vector3(movement_speed, 0, 0));
		} 

		if (Input.GetKey (KeyCode.LeftArrow)) {
			transform.Translate (new Vector3(-movement_speed, 0, 0));
		} 

		if (Input.GetKey (KeyCode.UpArrow)) {
			transform.Translate (new Vector3(0, movement_speed, 0));
		}

		if (Input.GetKey (KeyCode.DownArrow)) {
			transform.Translate (new Vector3(0, -movement_speed, 0));
		}

		//Shooting
		if (Input.GetKeyDown(KeyCode.Space)) {
			Instantiate (bubble_prefab, transform.position + new Vector3(2, 0, 0), Quaternion.identity);
		}
	}
}

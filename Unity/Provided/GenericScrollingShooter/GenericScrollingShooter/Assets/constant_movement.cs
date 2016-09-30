using UnityEngine;
using System.Collections;

public class constant_movement : MonoBehaviour {

	public float movement_velocity_x = 0.2f;
	public float movement_velocity_y = 0.0f;

	// Update is called once per frame
	void Update () {
		// Move bubble in the specified direction with the specified velocity.
		transform.Translate(new Vector3(movement_velocity_x, movement_velocity_y, 0));
	}
}

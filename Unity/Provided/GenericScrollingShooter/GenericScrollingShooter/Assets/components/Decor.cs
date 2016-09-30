using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Decor : MonoBehaviour {

	public Vector3 movement_vector;
	public bool should_wrap_screen = true;

	float scale_range;
	bool enable_parallax = true;

	// The distance from the center of the camera an object is allowed to be
	// before being wrapped.
	public float wrap_wall_x_coordinate = -15f;
	public Vector2 wrap_randomness_vertical_range;
	public Vector2 wrap_randomness_horizontal_range;

	// Process and perform the work for this component
	void Update () {
		ProcessMove ();

		if (should_wrap_screen)
			ProcessWrap ();
	}

	// <summary>
	// Process Movement-specific work for this component.
	// The movement of an object with this component is determined by a Vector3
	// The designer inputs into the inspector, under item 'movement_vector'.
	// </summary>
	void ProcessMove() {

		Vector3 dv = 
		transform.position += movement_vector * Time.deltaTime;
	}

	/// <summary>
	/// Determine if screen-wrapping is necessary during this frame.
	/// Screen-wrapping is a technique where one moves elements that have left
	/// the camera's field-of-view to the other side of the camera's field-of-
	/// view for re-entry, so the element may once again be visually present.
	/// This saves us from intantiating new objects.
	/// </summary>
	void ProcessWrap() {
		if (transform.position.x < wrap_wall_x_coordinate) {
			Vector3 wrap_randomness_offset_vector = new Vector3 ();
			wrap_randomness_offset_vector.x = Random.Range (wrap_randomness_horizontal_range.x,
															wrap_randomness_horizontal_range.y);
			wrap_randomness_offset_vector.y = Random.Range (wrap_randomness_vertical_range.x,
															wrap_randomness_vertical_range.y);
				
			transform.position = new Vector3(-wrap_wall_x_coordinate, 0, 0);
			transform.position += wrap_randomness_offset_vector;
			print (wrap_randomness_offset_vector.x.ToString() + " " + wrap_randomness_offset_vector.y.ToString());
		}
	}
}

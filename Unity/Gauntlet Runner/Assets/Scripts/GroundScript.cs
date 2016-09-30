using UnityEngine;
using System.Collections;

public class GroundScript : MonoBehaviour {
	float speed = 0.5f;
	Renderer render;

	// Use this for initialization
	void Start () {
		render = GetComponent<Renderer>();
	}
	
	// Update is called once per frame
	void Update () {
		float offset = Time.time * speed;
		render.material.mainTextureOffset = new Vector2 (0, -offset);
	}

	public void SlowDown(){
		speed /= 2;
	}

	public void SpeedUp(){
		speed *= 2;
	}
}

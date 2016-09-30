using UnityEngine;
using System.Collections;

public class AnimController : MonoBehaviour {
	Animator anim;
	// Use this for initialization
	void Start () {

		anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {

		anim.SetFloat("Speed",Input.GetAxis("Vertical")*30);
		anim.SetFloat("Direction",Input.GetAxis("Horizontal")*3);
	}
}

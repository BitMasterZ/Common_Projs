using UnityEngine;
using System.Collections;

public class PlayerControl : MonoBehaviour {
	public float MSPEED=0.5f,MJSPEED=2;
	float JSPEED=0;
	Animator ANIM;
	CharacterController CHAR_CONT;
	// Use this for initialization
	void Start () {
		CHAR_CONT = GetComponent<CharacterController> ();
		ANIM = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {

		float Speed = (Input.GetAxis ("Vertical") > 0) ? MSPEED : MSPEED / 4;

		//if()
		Vector3 movement = new Vector3 (Input.GetAxis ("Vertical") * Speed * Mathf.Sin (transform.eulerAngles.y * Mathf.Deg2Rad), 0f,
		                             Input.GetAxis ("Vertical") * Speed * Mathf.Cos (transform.eulerAngles.y * Mathf.Deg2Rad));


		transform.Rotate(new Vector3(0f,Input.GetAxis("Horizontal"),0f));
		ANIM.SetFloat ("Speed", Input.GetAxis ("Vertical"));

		if (Input.GetButton ("Jump")) {
			ANIM.SetBool("isJumping", true);
			JSPEED=MJSPEED;
		}
			movement.y=JSPEED;
			JSPEED += Physics.gravity.y*Time.deltaTime;
		if (CHAR_CONT.isGrounded) {
			ANIM.SetBool("isJumping", false);
			JSPEED=0;
		}
		if (Input.GetButton ("Fire1")) {
			ANIM.SetTrigger("X");
		}
		if (Input.GetButton ("Fire2")) {
			ANIM.SetTrigger("Y");
		}
		CHAR_CONT.Move(movement*Time.deltaTime);
		//print (CHAR_CONT.collisionFlags);
	}
}

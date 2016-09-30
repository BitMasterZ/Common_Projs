using UnityEngine;
using System.Collections;

public class Chad_Move : MonoBehaviour {
	Animator animControl;
	BoxCollider2D BCollider;
	SpriteRenderer SRender;
	public float MSpeed=2f;
	bool Crouch=false;
	public float Grav=1f,DefJSpeed=0f;
	float JSpeed=0;
	bool Ground=false;
	// Use this for initialization
	void Start () {
		animControl = GetComponent<Animator> ();
		BCollider = GetComponent<BoxCollider2D> ();
		SRender = GetComponent<SpriteRenderer> ();
	}

	void OnCollisionStay2D(Collision2D coll){
		switch (coll.gameObject.tag) {
		case "Floor":
			Ground=true;
			break;
		}
	}

	void OnCollisionExit2D(Collision2D coll){
		switch (coll.gameObject.tag) {
		case "Floor":
			Ground=false;
			break;
		}
	}


	void PlayerControl(){
		if (Input.GetKey (KeyCode.D)) {
			transform.Translate(new Vector3(MSpeed*Time.deltaTime,0,0));
			animControl.SetBool("isWalking",true);
			transform.localScale= new Vector3(Mathf.Abs(transform.localScale.x),transform.localScale.y,transform.localScale.z);
		}
		else if (Input.GetKey (KeyCode.A)) {
			transform.Translate(new Vector3(-MSpeed*Time.deltaTime,0,0));
			animControl.SetBool("isWalking",true);
			//transform.localScale= new Vector3(-Mathf.Abs(transform.localScale.x),transform.localScale.y,transform.localScale.z);
			
		}else{
			animControl.SetBool("isWalking",false);
		}
		if (Input.GetKey (KeyCode.S)) {
			if(!Crouch){
				animControl.SetBool("isCrouching",true);
				transform.Translate(0,-0.42f,0);
				Crouch=true;
			}
		}else{
			if(Crouch){
				animControl.SetBool("isCrouching",false);
				transform.Translate(0,0.42f,0);
				Crouch=false;
			}
		}
		if (Input.GetKeyDown (KeyCode.W)) {
			JSpeed=DefJSpeed;
			Ground=false;
		}
		if (Input.GetKeyDown (KeyCode.E)) {
			animControl.SetTrigger("LAttack");
		}
		if (Input.GetKeyDown (KeyCode.R)) {
			animControl.SetTrigger("MAttack");
		}
		if (Input.GetKeyDown (KeyCode.T)) {
			animControl.SetTrigger("SAttack");
		}
	}
	void Gravity(){
		if (Ground) {
			JSpeed=0;
		}else{
			JSpeed-=Grav*Time.deltaTime;
			transform.Translate(new Vector3(0,JSpeed*Time.deltaTime,0));
		}
		animControl.SetBool("isJumping", JSpeed > 0);
		animControl.SetBool ("isFalling", JSpeed < 0 && !Ground);
	}
	void ResizeCollider(){
		BCollider.offset=new Vector2(SRender.sprite.bounds.center.x,SRender.sprite.bounds.center.y);
		BCollider.size = new Vector2 (SRender.sprite.bounds.extents.x*2, 1f*((animControl.GetBool("isCrouching"))?0.58f:1f));
	}
	// Update is called once per frame
	void Update () {
		PlayerControl ();
		Gravity ();
		ResizeCollider ();
		Crouch=animControl.GetBool ("isCrouching");
	}
}

using UnityEngine;
using System.Collections;

public class Movement : MonoBehaviour {

	public float MSpeed=0.01f,Gravity_Const=1,JumpSpeed=0.1f;
	float VSpeed=0;
	int Direction=1;
	Animator Player_Anim;
	bool Ground=true,Crouch=false;
	GameObject Back;

	// Use this for initialization
	void Start () {
		Player_Anim = GetComponent<Animator> ();
		Back=GameObject.FindGameObjectWithTag("Back");
	}


	bool Collision(GameObject[] objs){
		bool Coll = false;
		for (int i=0; i<objs.Length; i++) {
			
			float obj_X=transform.position.x,obj_Y=transform.position.y;
			float obj_W=Mathf.Abs(transform.localScale.x),obj_H=Mathf.Abs(transform.localScale.y);
			float Floor_X=objs[i].transform.position.x,Floor_Y=objs[i].transform.position.y;
			float Floor_W=objs[i].transform.localScale.x,Floor_H=objs[i].transform.localScale.y;
		 	if((obj_X+obj_W/2+ Direction>=Floor_X-Floor_W/2)&&(obj_X- obj_W/2+Direction<=Floor_X+Floor_W/2)){
				if((obj_Y-obj_H/2<=Floor_Y + Floor_H/2)&&(obj_Y+ obj_H/2>=Floor_Y- Floor_H/2)){
					Coll=true;
				}
			}
			
		}
		return Coll;
	}

	void isGrounded(GameObject[] floors){
		Ground = false;
		for (int i=0; i<floors.Length; i++) {
			float Player_X=transform.position.x,Player_Y=transform.position.y;
			float Player_W=Mathf.Abs(transform.localScale.x),Player_H=Mathf.Abs(transform.localScale.y);
			float Floor_X=floors[i].transform.position.x,Floor_Y=floors[i].transform.position.y;
			float Floor_W=floors[i].transform.localScale.x,Floor_H=floors[i].transform.localScale.y;

			if((Player_X+Player_W/2>=Floor_X-Floor_W/2)&&(Player_X-Player_W/2<=Floor_X+Floor_W/2)){
				if((Player_Y-Player_H/30<=Floor_Y + Floor_H/20)&&(Player_Y+Player_H/30>=Floor_Y- Floor_H/2)){
					VSpeed=0;
					transform.Translate(new Vector3(0,-0.1f,0));
				}
				else if((Player_Y-Player_H/2<=Floor_Y + Floor_H/2)&&(Player_Y+Player_H/2>=Floor_Y+ Floor_H/2)){
					Ground=true;
					transform.position.Set(Player_X,Floor_Y + Floor_H/2+Player_H/2,0);
					Floor_Move sc=floors[i].GetComponent<Floor_Move>();
					transform.Translate(sc.getSpeed());
				}
			}

		}
	}
	// Update is called once per frame
	void Update() {
		float JSpeed=(Ground)?1f:0.5f;

		isGrounded(GameObject.FindGameObjectsWithTag("Floor"));

		if (Input.GetKey(KeyCode.D)) {
			Direction=1;
			transform.localScale = new Vector3(Mathf.Abs(transform.localScale.x), transform.localScale.y, 0f);

			if(!Crouch){
				if(!Collision(GameObject.FindGameObjectsWithTag("Wall")))transform.Translate(new Vector3(MSpeed*JSpeed,0,0));
			}
			Player_Anim.SetBool ("isWalking", true);
		} 
		else if (Input.GetKey(KeyCode.A)) {

			Direction=-1;
			transform.localScale = new Vector3(-Mathf.Abs(transform.localScale.x), transform.localScale.y, 0f);
			if(!Crouch){
				if(!Collision(GameObject.FindGameObjectsWithTag("Wall")))transform.Translate(new Vector3(-MSpeed*JSpeed,0,0));
			}
			Player_Anim.SetBool ("isWalking", true);
		}

		else {
			if(Ground){Player_Anim.SetBool ("isWalking", false);}
		}

		if (Input.GetKeyDown(KeyCode.W)) {
			if(Ground){
				VSpeed=JumpSpeed;
				transform.Translate(new Vector3(0,1f,0));
				Ground = false;
			}
		}
		if (Input.GetKey (KeyCode.S)) {
			if (Ground && !Crouch) {
				Player_Anim.SetBool ("Crouch", true);
				//transform.Translate(0,-2f,0);
				Crouch=true;
			}
		}
		if (Input.GetKeyUp (KeyCode.S)) {
			Player_Anim.SetBool ("Crouch", false);
			Crouch=false;
			//transform.Translate(0,2f,0);
		}

		if (Input.GetKeyDown (KeyCode.E)) {
			//if (Ground) {
				Player_Anim.SetTrigger("WAttack");
			//}
		}

		if (Input.GetKeyDown (KeyCode.R)) {
				Player_Anim.SetTrigger("SAttack");
		}
		if (Input.GetKeyDown (KeyCode.Escape)) {
			Application.Quit();
		}
		if (Input.GetKeyDown (KeyCode.T)) {
			if(Ground){
				Player_Anim.SetTrigger("Special2");
				//transform.Translate(5f*Direction,0,0);
			}
		}
		if (Input.GetKeyUp (KeyCode.T)) {
			if(Ground){
				//Player_Anim.SetTrigger("Special2");
				transform.Translate(5f*Direction,0,0);
			}
		}

		/*
		if (transform.position.y  > 0.7f ) {
			Ground = false;
		} else {
			Ground=true;
		}
*/
	
		Player_Anim.SetBool ("isJumping", VSpeed > 0);
		Player_Anim.SetBool ("Ground", Ground);

		transform.Translate (new Vector3 (0, VSpeed, 0));


		if (!Ground) {

			VSpeed -= Gravity_Const*Time.deltaTime;
		} else {
			VSpeed=0;

		}


	}
}

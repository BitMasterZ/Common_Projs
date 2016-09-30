using UnityEngine;
using System.Collections;

public class Enemy_Movement : MonoBehaviour {
	public float MSpeed;
	Animator animControl;
	// Use this for initialization
	void Start () {
		animControl = this.GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void MoveX(float Dir){
		animControl.SetBool ("isMoving", false);
		if (Dir > 0) {
		//Move Right
			this.transform.Translate(new Vector3(1f,0f,0f)*Time.deltaTime*MSpeed);
			animControl.SetBool ("isMoving", true);
			animControl.SetInteger("MoveDir",1);

		}else{
		//Move Left
			this.transform.Translate(new Vector3(-1f,0f,0f)*Time.deltaTime*MSpeed);
			animControl.SetBool ("isMoving", true);
			animControl.SetInteger("MoveDir",3);
		}

	}

	public void MoveY(float Dir){
		animControl.SetBool ("isMoving", false);

		if (Dir > 0) {
			//Move Up
			this.transform.Translate(new Vector3(0f,1f,0f)*Time.deltaTime*MSpeed);
			animControl.SetBool ("isMoving", true);
			animControl.SetInteger("MoveDir",0);

		}else{
			//Move Down
			this.transform.Translate(new Vector3(0f,-1f,0f)*Time.deltaTime*MSpeed);
			animControl.SetBool ("isMoving", true);
			animControl.SetInteger("MoveDir",2);

		}
		
	}

	public void FacePlayer(GameObject Player){
		Vector3 Pos = Player.transform.position - this.transform.position;
		if(Mathf.Abs(Pos.x)>Mathf.Abs(Pos.y)){
			if (Pos.x < 0) {
				animControl.SetBool ("isMoving", true);
				animControl.SetInteger("MoveDir",3);
				animControl.SetBool ("isMoving", false);
			}
			else if(Pos.x > 0){
				animControl.SetBool ("isMoving", true);
				animControl.SetInteger("MoveDir",1);
				animControl.SetBool ("isMoving", false);
			}
		}else{
			if (Pos.y < 0) {
				animControl.SetBool ("isMoving", true);
				animControl.SetInteger("MoveDir",2);
				animControl.SetBool ("isMoving", false);	
			}
			else if(Pos.y > 0){
				animControl.SetBool ("isMoving", true);
				animControl.SetInteger("MoveDir",0);
				animControl.SetBool ("isMoving", false);
			}
			
		}
	}
	public void Attack(){
		animControl.SetTrigger ("isAttacking");
	}
	public void RotateMove(GameObject Player){
		Vector3 Pos = Player.transform.position-transform.position;

		if(Mathf.Abs(Pos.x)>Mathf.Abs(Pos.y)){
			if (Pos.x < 0) {
				this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,90));		
			}
			else if(Pos.x > 0){
				this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,-90));
			}
		}else{
			if (Pos.y < 0) {
				this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,180));		
			}
			else if(Pos.y > 0){
				this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,0));
			}

		}
		this.transform.Translate(new Vector3(0f,1f,0f)*Time.deltaTime*MSpeed);

	}

	public void Fire(){
		animControl.SetTrigger ("isFiring");
	}
	public void Stomp(){
		animControl.SetTrigger ("isAttacking");
		animControl.SetTrigger ("isStomping");
	}
	}
	
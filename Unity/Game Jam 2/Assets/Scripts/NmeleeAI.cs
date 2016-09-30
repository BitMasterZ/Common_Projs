using UnityEngine;
using System.Collections;

public class NmeleeAI : MonoBehaviour {
	GameObject Player;
	public float DetectRange;
	public float AttackSpeed=3;
	bool blnAttack=false;
	string State="calm";
	Enemy_Movement eneControl;
	float Counter=0,ChaseCounter=0;
	float timer=0;
	// Use this for initialization
	void Start () {
		eneControl = this.GetComponent<Enemy_Movement> ();
		Player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		
		Vector3 Disp = Player.transform.position - this.transform.position;

		if (Disp.magnitude <= DetectRange) {
			State="hostile";
		}else{
			State="calm";
		}
		switch (State) {
			
		case "calm":
			//Move around?
			break;
		case "hostile":
			

				if(ChaseCounter>2*Time.deltaTime){
					eneControl.RotateMove(Player);
					ChaseCounter=0;
				}
				ChaseCounter+=Time.deltaTime;

			break;
		}

	}
	void OnCollisionStay2D(Collision2D coll){
		// while colliding, call TakeDamage function in player script at attackspeed rate
		if (coll.gameObject.tag == "Player") {
			//print ("DIE!!");
			if (timer >= AttackSpeed){
				Player.GetComponent<Player_Stats>().TakeDamage(5);
				timer = 0;
			}
			
			timer += Time.deltaTime;
		}
	}
		
}

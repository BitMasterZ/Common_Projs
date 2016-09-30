using UnityEngine;
using System.Collections;

public class bossAI : MonoBehaviour {
	
	public GameObject Player;
	public GameObject ProjPrefab;
	Animator BossAnim;
	Player_Stats playerScript;
	Enemy_Movement eneControl;
	CircleCollider2D eneBox;
	float rand;
	float timer;
	public float cooldown;
	float damagetimer;
	bool hit;
	SpriteRenderer[] meleeSprite;
	int attacktype = 0;
	//public GameObject Player;
	// Use this for initialization
	void Start () {
		eneControl = this.GetComponent<Enemy_Movement> ();
		BossAnim = this.GetComponent<Animator> ();
		eneBox = this.GetComponent<CircleCollider2D> ();
		playerScript = Player.GetComponent<Player_Stats> ();
		timer = cooldown;
		damagetimer = 10;
		meleeSprite = GetComponentsInChildren<SpriteRenderer> ();
		resetFire ();
		resetStomp ();
	}
	
	// Update is called once per frame
	void Update () {
		rand = Random.Range (0, 100);
		BossAnim.SetBool ("isMoving", false);
		if (timer <= 0){
			
			//print (rand);
			if (rand < 40){
				attack1();
				
			}
			else if (rand >= 40 && rand < 60){
				attack2();
				
			}
			else if (rand >= 60 && rand < 70){
				hit = true;
				attack3 ();
				
			}
			else if (rand >= 70){
				follow ();
				
				
			}
			timer = cooldown;
		}
		timer -= rand;
		
	}
	void attack1(){
		//turn on range animation
		eneControl.Fire ();
		Vector3 Disp = Player.transform.position - this.transform.position;
		Vector3 offset = Disp.normalized;
		GameObject proj=Instantiate(ProjPrefab,this.transform.position+offset/2,Quaternion.identity) as GameObject;
		proj.GetComponent<projectile>().SetDir(Disp);
		
	}
	
	void attack2(){
		eneControl.Attack ();
		eneBox.radius = 0.17f;
		if (BossAnim.GetInteger("MoveDir") == 0){
			meleeSprite[1].enabled = true;
		}
		else if (BossAnim.GetInteger("MoveDir") == 1){
			meleeSprite[2].enabled = true;
		}
		else if (BossAnim.GetInteger("MoveDir") == 2){
			meleeSprite[3].enabled = true;
		}
		else if (BossAnim.GetInteger("MoveDir") == 3){
			meleeSprite[4].enabled = true;
		}
		Invoke ("resetFire", 1f);
		Invoke ("reset", 1f);
		attacktype = 1;
	}
	
	void attack3(){
		//area animation
		eneControl.Stomp ();
		meleeSprite [5].enabled = true;
		attacktype = 2;
		eneBox.radius = 0.23f;
		attacktype = 2;
		Invoke ("reset", 1f);
		Invoke ("resetStomp", 0.5f);
		
		
	}
	
	void follow(){
		Vector3 Disp = Player.transform.position - this.transform.position;
		if (Mathf.Abs (Disp.y) > Mathf.Abs(Disp.x)){
			eneControl.MoveY(Disp.y);
		}
		else{
			eneControl.MoveX(Disp.x);
		}
		
	}
	
	void OnCollisionStay2D(Collision2D coll){
		if (coll.gameObject.tag == "Player" ) {
			//print ("DIE!!");
			if (attacktype == 1 && damagetimer >= 10){
				playerScript.TakeDamage(10);
				damagetimer = 0;
			}
			else if (attacktype == 2 && hit) {
				playerScript.TakeDamage(15);
				print ("ahg");
				hit = false;
			}
			
		}
		damagetimer += Time.deltaTime;
	}
	
	void reset(){
		eneBox.radius = 0.15f;
		
	}
	
	void resetFire(){
		
		for (int i = 1; i < 5; i++) {
			meleeSprite [i].enabled = false;
		}
	}
	void resetStomp(){
		meleeSprite [5].enabled = false;
	}
}
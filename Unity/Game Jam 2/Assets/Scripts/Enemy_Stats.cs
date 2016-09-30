using UnityEngine;
using System.Collections;

public class Enemy_Stats : MonoBehaviour {
	public int Health= 100;
	bool blnDead=false;
	float Counter=0,Counter2=0;
	GameObject DeathAnim;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (blnDead) {
			Counter+=Time.deltaTime;
		}
		if (Counter > 5) {
			SpriteRenderer sprites=this.GetComponent<SpriteRenderer>();
			if(sprites!=null){
				sprites.enabled=false;
			}else{
				this.GetComponent<MeshRenderer>().enabled=false;
			}
		}
		if (DeathAnim != null) {
			Counter2+=Time.deltaTime;
			if(Counter2>7){
				Destroy(DeathAnim);
				Destroy(this.gameObject);
				Counter2=0;
			}
		}
	}

	public bool isDead(){
		return blnDead;
	}
	public void TakeDamage(int Amt){
		if (blnDead)return;
		Health -= Amt;
		if (Health <= 0) {
			Health=0;


			if(this.tag=="MEnemy"){
				this.GetComponent<meleeAI>().enabled=false;
				this.GetComponent<BoxCollider2D>().enabled=false;

			}
			else if(this.tag=="NEnemy"){
				this.GetComponent<NmeleeAI>().enabled=false;
				//this.GetComponent<Enemy_Rotate>().enabled=false;
				this.GetComponent<BoxCollider2D>().enabled=false;
			}
			else if(this.tag=="REnemy"){
				this.GetComponent<RangedAI>().enabled=false;
				this.GetComponent<Enemy_Movement>().enabled=false;
				this.GetComponent<BoxCollider2D>().enabled=false;

			}
			else if (this.tag == "BossEnemy"){
				this.GetComponent<bossAI>().enabled = false;
				this.GetComponent<Enemy_Movement>().enabled = false;
				this.GetComponent<CircleCollider2D>().enabled = false;
				Application.LoadLevel("End");
				//explosion animation
				//enable door
			}

			blnDead=true;
			GameObject plyr=GameObject.FindGameObjectWithTag("Player");
			DeathAnim=plyr.GetComponent<Player_Movement>().DeathEffect(this.gameObject);

		}
	}

}

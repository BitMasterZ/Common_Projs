using UnityEngine;
using System.Collections;

public class Player_Movement : MonoBehaviour {
	public float MSpeed=5;
	public float ASpeed=1, LaserSpeed=0.05f;
	float LaserCounter=0.05f;
	Animator animControl;
	public GameObject Blood, Flowers;
	public GameObject LaserPrefab;
	public GameObject[] Anchors;
	AudioSource attackSound;
	public AudioClip swordHit, laserHit;

	float timer, Counter=0;
	// Use this for initialization
	void Start () {
		animControl = this.GetComponent<Animator>();
		for (int i = 1; i < Anchors.Length; i++){
			setMeshRenderer(i,false);
		}
		timer = ASpeed;
		attackSound = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		animControl.SetBool("isMoving",false);

		if (Input.GetKey (KeyCode.W)) {
			transform.Translate(new Vector3(0,1,0)*MSpeed*Time.deltaTime);
			animControl.SetInteger("moveDir",0);
			animControl.SetBool("isMoving",true);
		}
		if (Input.GetKey (KeyCode.S)) {
			transform.Translate(new Vector3(0,-1,0)*MSpeed*Time.deltaTime);
			animControl.SetInteger("moveDir",2);
			animControl.SetBool("isMoving",true);

		}
		if (Input.GetKey (KeyCode.A)) {
			transform.Translate(new Vector3(-1,0,0)*MSpeed*Time.deltaTime);
			animControl.SetInteger("moveDir",3);
			animControl.SetBool("isMoving",true);

		}
		if (Input.GetKey (KeyCode.D)) {
			transform.Translate(new Vector3(1,0,0)*MSpeed*Time.deltaTime);
			animControl.SetInteger("moveDir",1);
			animControl.SetBool("isMoving",true);

		}
		if (Input.GetKey (KeyCode.K)&& !animControl.GetBool("isMoving")) {
			animControl.SetBool("isAttacking",true);
			if(!attackSound.isPlaying){
				attackSound.clip = swordHit;
				attackSound.Play ();
			}
			
		}

		if (Input.GetKeyUp (KeyCode.K)) {
			animControl.SetBool("isAttacking",false);
			
		}
		if(LaserCounter>LaserSpeed){
			if (Input.GetKeyDown(KeyCode.L)){
				Vector3 Off=new Vector3(0f,0f,0f);
				if (animControl.GetInteger ("moveDir") == 0) {
					Off=new Vector3(0f,1f,0f);
				}
				else if (animControl.GetInteger ("moveDir") == 1) {
					Off=new Vector3(1f,0.5f,0f);
				}
				else if (animControl.GetInteger ("moveDir") == 2) {
					Off=new Vector3(0f,-1f,0f);
				}
				else if (animControl.GetInteger ("moveDir") == 3) {
					Off=new Vector3(-1f,0.5f,0f);
				}

					animControl.SetTrigger("isFiring");
					Instantiate(LaserPrefab,this.transform.position+Off*0.5f,Quaternion.identity);
					LaserCounter=0;
					if(!attackSound.isPlaying){
						attackSound.clip = laserHit;
						attackSound.Play ();
					}
				}
		}
		LaserCounter+=Time.deltaTime;
		if (Input.GetKeyDown(KeyCode.T)){
			GetComponent<Player_Stats>().ImLosinIt(50);
		}




	}

	public void FlipMap(){
		for (int i=0; i<Anchors.Length; i++) {
			Anchors[i].GetComponent<Map>().WorldFlip();
		}
	}

	void setMeshRenderer(int Index,bool value){
		MeshRenderer[] renderers=Anchors[Index].GetComponentsInChildren<MeshRenderer>();
		for(int i=0;i<renderers.Length;i++){
			renderers[i].enabled=value;
		}		
	}

	public void OnCollisionStay2D(Collision2D coll){

		if (coll.gameObject.tag == "MEnemy" || coll.gameObject.tag == "REnemy"|| coll.gameObject.tag == "NEnemy"|| coll.gameObject.tag == "BossEnemy") {
			//print ("Touching u");
			if(animControl.GetBool("isAttacking")){
				if(timer >= ASpeed){
					print ("Hitting u");
					if(this.GetComponent<Player_Stats>().isCrazy()){
						ASpeed=0;
						coll.gameObject.GetComponent<Enemy_Stats>().TakeDamage(100);
					}else{
						ASpeed=1;
						coll.gameObject.GetComponent<Enemy_Stats>().TakeDamage(50);
					}

					if(coll.gameObject.GetComponent<Enemy_Stats>().isDead()){
						this.GetComponent<Player_Stats>().ImLosinIt(30);

					}
					timer = 0;
				}
				else{
					timer += Time.deltaTime;
					print(timer);
				}
			}

		}

		if (coll.gameObject.tag == "Next") {
			Application.LoadLevel("BossFight");
		}

	}

	public GameObject DeathEffect(GameObject ene){
		GameObject DeathAnim;
		if (this.GetComponent<Player_Stats>().isCrazy()) {
			DeathAnim= Instantiate(Flowers,ene.transform.position+new Vector3(0,0,1f),Quaternion.identity) as GameObject;
		}else{
			DeathAnim= Instantiate(Blood,ene.transform.position+new Vector3(0,0,1f),Quaternion.identity)as GameObject;
		}
		return DeathAnim;
	}

	public void OnTriggerEnter2D(Collider2D coll){
		if(coll.gameObject.tag.Contains("Room")){
			int Index;
			string txt = coll.gameObject.tag.Replace("Room","");
			bool Works = int.TryParse (txt, out Index);
			
			for (int i=0; i<Anchors.Length; i++) {
				setMeshRenderer(i,i==Index-1);
			}
		}
	}
}

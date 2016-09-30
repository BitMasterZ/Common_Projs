using UnityEngine;
using System.Collections;

public class projectile : MonoBehaviour {
	Player_Stats playerScript;
	Vector3 Dir= new Vector3(0f,0f,0f);
	// Use this for initialization
	void Start () {
		playerScript = GameObject.FindWithTag ("Player").GetComponent<Player_Stats>();
	}
	
	// Update is called once per frame
	void Update () {

		this.transform.Translate (Dir*Time.deltaTime*10);
	}

	public void SetDir(Vector3 Inp){
		Dir = Inp;
		Dir.Normalize ();
	}

	void OnCollisionEnter2D(Collision2D coll){
		// while colliding, call TakeDamage function in player script at attackspeed rate
		if(coll.gameObject.tag == "Player") {
			//print ("hit");
			playerScript.TakeDamage (5);
			Destroy(this.gameObject);
		}
		else if(coll.gameObject.tag.Contains("Room")){
			Destroy(this.gameObject);
		}

	}

}
using UnityEngine;
using System.Collections;

public class Player_Laser : MonoBehaviour {
	public float MoveSpeed;
	Animator animControl;
	// Use this for initialization
	void Start () {
		animControl = GameObject.FindGameObjectWithTag("Player").GetComponent<Animator> ();
		if (animControl.GetInteger ("moveDir") == 0) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,90f));
		}
		else if (animControl.GetInteger ("moveDir") == 1) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,0f));
		}
		else if (animControl.GetInteger ("moveDir") == 2) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,270f));
		}
		else if (animControl.GetInteger ("moveDir") == 3) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,180f));
		}


	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate (new Vector3 (1f, 0f, 0f) * MoveSpeed * Time.deltaTime);
	}

	void OnCollisionEnter2D(Collision2D coll){
		if (coll.gameObject.tag.Contains ("Enemy")) {
			coll.gameObject.GetComponent<Enemy_Stats>().TakeDamage(45);
			if(coll.gameObject.GetComponent<Enemy_Stats>().isDead()){
				GameObject.FindGameObjectWithTag("Player").GetComponent<Player_Stats>().ImLosinIt(20);
			}
			Destroy(this.gameObject);
		}
		if (coll.gameObject.tag.Contains ("Room")) {
			Destroy(this.gameObject);
		}

	
	}

}

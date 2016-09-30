using UnityEngine;
using System.Collections;

public class Anim : MonoBehaviour {
	GameObject Sword;
	bool Dead=false;
	// Use this for initialization
	void Start () {
		Sword = GameObject.Find ("Projectile");
	}
	
	// Update is called once per frame
	void Update () {
		if (!Dead) {
			Sword.transform.Translate(new Vector3(0f,0.2f,0f));
			//transform.GetComponent<Animation>().Play("death");
		}
	}

	void OnTriggerEnter(Collider coll){
		GameObject hitter = coll.gameObject;
		if (hitter.tag == "Red") {
			Dead=true;
			hitter.transform.parent=GameObject.Find("Bip001 L Thigh").transform;
			//Destroy(hitter);
			GetComponent<Animation>().Play("death");
		}
	}
}

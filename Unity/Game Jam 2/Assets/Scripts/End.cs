using UnityEngine;
using System.Collections;

public class End : MonoBehaviour {
	public GameObject ending;
	public GameObject quit;
	public GameObject restart;
	SpriteRenderer es;
	SpriteRenderer res;
	SpriteRenderer qu;
	BoxCollider2D rcol;
	BoxCollider2D qcol;
	// Use this for initialization
	void Start () {
		es = ending.GetComponent<SpriteRenderer> ();
		es.enabled = false;
		res = restart.GetComponent<SpriteRenderer> ();
		rcol = restart.GetComponent<BoxCollider2D> ();
		res.enabled = false;
		rcol.enabled = false;
		qu = quit.GetComponent<SpriteRenderer> ();
		qcol = quit.GetComponent<BoxCollider2D> ();
		qu.enabled = false;
		qcol.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {

	}

	void OnTriggerEnter2D(Collider2D box){
		es.enabled = true;
		res.enabled = true;
		qu.enabled = true;
		rcol.enabled = true;
		qcol.enabled = true;
	}
}

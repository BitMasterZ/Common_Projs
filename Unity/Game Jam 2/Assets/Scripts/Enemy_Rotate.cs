using UnityEngine;
using System.Collections;

public class Enemy_Rotate : MonoBehaviour {
	public GameObject Player;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 Pos = Player.transform.position-transform.position;
		if (Pos.x < 0) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,90));		
		}
		else if(Pos.x > 0){
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,-90));
		}
		if (Pos.y < 0) {
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,180));		
		}
		else if(Pos.y > 0){
			this.transform.rotation=Quaternion.Euler(new Vector3(0f,0f,0));
		}
		//this.transform.up = Pos;
	}
}

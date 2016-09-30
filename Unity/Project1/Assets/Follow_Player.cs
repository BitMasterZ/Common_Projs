using UnityEngine;
using System.Collections;

public class Follow_Player : MonoBehaviour {

	GameObject Player;
	// Use this for initialization
	void Start () {
		Player=GameObject.FindGameObjectWithTag("Target");
		//transform.Translate(new Vector3(-1f,0,0));

	}
	
	// Update is called once per frame
	void Update () {
		//print ("Im here"+this.ToString());

		Vector3 Disp = Player.transform.position - transform.position;
		transform.Translate(new Vector3(Disp.x,Disp.y,0));
		//transform.position.Set(-25,-25,-10);//Player.transform.position.x-25, Player.transform.position.y, -100);
	}
}

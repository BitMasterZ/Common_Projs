using UnityEngine;
using System.Collections;

public class fish_behavior : MonoBehaviour {

	void OnCollisionEnter2D(Collision2D coll) {
		if (coll.gameObject.tag == "enemy") {
			//Save Score
			GameObject hud = GameObject.Find("hud");
			hud.SendMessage("SaveHudData");

			//Transition to new scene.
			Application.LoadLevel("game_over");
		}
	}
}

using UnityEngine;
using System.Collections;

public class take_damage_from_projectile : MonoBehaviour {

	public int hp = 0;

	void OnCollisionEnter2D(Collision2D col) {
	
		if(col.gameObject.tag == "player_projectile")
		{
			//Play death sound effect
			AudioSource.PlayClipAtPoint(audio.clip, transform.position);

			//Update Score
			GameObject hud = GameObject.Find("hud");
			hud.SendMessage("IncrementScore");

			//Destroy this object.
			Destroy (gameObject);
			//Destroy the colliding object (the projectile).
			Destroy (col.gameObject);
		}
	}
}
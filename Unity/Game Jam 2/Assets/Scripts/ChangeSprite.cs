using UnityEngine;
using System.Collections;

public class ChangeSprite : MonoBehaviour {
	public Sprite Real,Crazy;
	SpriteRenderer SpriteRend;
	Player_Stats PlyrStats;
	
	// Use this for initialization
	void Start () {
		SpriteRend = this.GetComponent<SpriteRenderer> ();
		PlyrStats = GameObject.FindGameObjectWithTag ("Player").GetComponent<Player_Stats>();
	}
	
	// Update is called once per frame
	void Update () {
		if (PlyrStats.isCrazy ()) {
			SpriteRend.sprite = Crazy; 
		}else{
			SpriteRend.sprite = Real;
		}
	}
}

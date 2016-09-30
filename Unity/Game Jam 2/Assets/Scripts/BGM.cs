using UnityEngine;
using System.Collections;

public class BGM : MonoBehaviour {
	
	public GameObject Player;
	public AudioClip crazy, sane;
	Player_Stats pStats;
	AudioSource audControl;
	
	// Use this for initialization
	void Start () {
		pStats = Player.GetComponent<Player_Stats> ();	
		audControl = this.GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		if(pStats.isCrazy() == true) {
			audControl.clip = crazy;
		}
		else{
			audControl.clip = sane;
		}
		if(!audControl.isPlaying){
			audControl.Play ();
		}
	}
}

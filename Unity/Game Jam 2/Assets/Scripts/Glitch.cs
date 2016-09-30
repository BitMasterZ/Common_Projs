using UnityEngine;
using System.Collections;

public class Glitch : MonoBehaviour {
	SpriteRenderer[] real;
	float timer = 0;
	float random;
	float addtime;
	float change = 500;
	public int numChild;
	AudioSource swapSong;
	public AudioClip normalSong, crazySong;
	bool happy = false;
	
	// Use this for initialization
	void Start () {
		real = GetComponentsInChildren<SpriteRenderer>();
		swapSong = GetComponent<AudioSource> ();
	}
	
	// Update is called once per frame
	void Update () {
		
		addtime = Random.Range (0, 25);
		timer += addtime;
		//print (timer);
		if (timer > change){
			swap();
			timer = 0;
			
			
		}
	}
	
	
	
	
	void swap(){
		random = Random.Range (0, 100);
		if (random < 95){
			for(int i = 0; i < numChild; i++){
				real[i].enabled =true;
				
			}
			
			if(!swapSong.isPlaying ||happy){
				swapSong.Stop();
				swapSong.clip = normalSong;
				swapSong.Play ();
			}
			happy=false;
			
		}
		else if (random >= 95){
			for(int i = 0; i < numChild; i++){
				real[i].enabled = false;
			}
			
			if(!swapSong.isPlaying || !happy){
				swapSong.Stop();
				swapSong.clip = crazySong;
				swapSong.Play ();
			}
			happy=true;
		}
		
	}
}

using UnityEngine;
using System.Collections;

public class draw_score : MonoBehaviour {

	public int score = 0;
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnGUI()
	{
		GUI.Label(new Rect(10, 10, 100, 20), "Score: " + score.ToString());
	}

	void IncrementScore(){
		score ++;
	}

	void SaveHudData() {
		PlayerPrefs.SetInt("score", score);
	}
}

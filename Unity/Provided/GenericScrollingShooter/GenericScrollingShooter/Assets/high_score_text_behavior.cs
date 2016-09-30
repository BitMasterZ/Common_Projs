using UnityEngine;
using System.Collections;

public class high_score_text_behavior : MonoBehaviour {

	// Use this for initialization
	void Start () {
		GetComponent<TextMesh>().text = PlayerPrefs.GetInt("score").ToString();
	}
}

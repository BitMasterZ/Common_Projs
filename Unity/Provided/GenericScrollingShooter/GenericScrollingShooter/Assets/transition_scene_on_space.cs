using UnityEngine;
using System.Collections;

public class transition_scene_on_space : MonoBehaviour {

	// Update is called once per frame
	void Update () {
		if(Input.GetKeyDown(KeyCode.Space)) {
			Application.LoadLevel("gameplay");
		}
	}
}

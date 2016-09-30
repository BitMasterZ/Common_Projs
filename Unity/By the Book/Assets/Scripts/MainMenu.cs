using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {
	int Counter=0, buttonInt=0;
	float vVal=0f;
	bool toggleState=false;
	string[] list = {"Easy", "Normal","Hard"};
	string Txt="";

	//public GUIStyle style;
	public GUISkin skin;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	//18001592868

	void OnGUI(){

		GUI.skin = skin;

		//GUI.Label(new Rect(Screen.width/2-50,Screen.height/2-25,100,50),"Hello World");
		GUI.Box(new Rect(Screen.width/2-50,Screen.height/2-12,100,25),"Hello World");
		//if (GUI.Button (new Rect (0, 0, 50, 30), "Msg",style)) {
		if (GUI.Button (new Rect (0, 0, 50, 30), "Msg")) {
			print ("Button clicked");
		}

		GUI.Label(new Rect(200,Screen.height/2-12,100,25),Counter+"");
		if (GUI.RepeatButton (new Rect (0, Screen.height/2-15, 150, 30), "Increment")) {
			Counter++;
		}

		toggleState = GUI.Toggle(new Rect(100,100,100,30), toggleState, "Lights");
	
		buttonInt = GUI.Toolbar (new Rect (300, 300, 200, 30), buttonInt, list);
		Txt=GUI.TextField (new Rect (500, 500, 200, 30), Txt);

		vVal = GUI.VerticalSlider (new Rect (700, 300, 30, 150), vVal, 0, 100);

	}
}

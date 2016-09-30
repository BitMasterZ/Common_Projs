using UnityEngine;
using System.Collections;

public class ChangeAnims : MonoBehaviour {
	public Animator Real,Crazy;
	Animator animControl;
	Player_Stats PlyrStats;

	// Use this for initialization
	void Start () {
		animControl = this.GetComponent<Animator> ();
		PlyrStats = GameObject.FindGameObjectWithTag ("Player").GetComponent<Player_Stats>();
	}
	
	// Update is called once per frame
	void Update () {
		if (PlyrStats.isCrazy ()) {
			animControl.runtimeAnimatorController=Crazy.runtimeAnimatorController;
		}else{
			animControl.runtimeAnimatorController=Real.runtimeAnimatorController;
		}
	}
}

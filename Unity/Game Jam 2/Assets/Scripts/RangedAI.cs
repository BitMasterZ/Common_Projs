using UnityEngine;
using System.Collections;

public class RangedAI : MonoBehaviour {
	GameObject Player;
	public GameObject ProjPrefab;
	public float DetectRange;
	bool blnAttack=false;
	string State="calm";
	Enemy_Movement eneControl;
	float Counter=0,ChaseCounter=0;
	// Use this for initialization
	void Start () {
		eneControl = this.GetComponent<Enemy_Movement> ();
		Player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {

		Vector3 Disp = Player.transform.position - this.transform.position;
		if (Disp.magnitude <= DetectRange) {
			State="hostile";
		}else{
			State="calm";
		}
		switch (State) {
		
		case "calm":
			//Move around?
			break;
		case "hostile":

			blnAttack=(Disp.x<0.5 || Disp.y<0.5)&& (Disp.magnitude<DetectRange/2 && Disp.magnitude>DetectRange/4);

			if(blnAttack){
				if(Counter<=0){
					eneControl.FacePlayer(Player);
					eneControl.Attack();
					Vector3 offset=Disp.normalized;
					GameObject proj=Instantiate(ProjPrefab,this.transform.position+offset/2,Quaternion.identity) as GameObject;
					proj.GetComponent<projectile>().SetDir(Disp);
					Counter =1;
				}
				Counter-=Time.deltaTime;
			}else{
				if(ChaseCounter>3*Time.deltaTime){
					if(Mathf.Abs(Disp.x)> Mathf.Abs(Disp.y)){
						eneControl.MoveX(Disp.x);
					}else{
						eneControl.MoveY(Disp.y);
					}
					ChaseCounter=0;
				}
				ChaseCounter+=Time.deltaTime;
			}
			break;
		}
						


	}

}

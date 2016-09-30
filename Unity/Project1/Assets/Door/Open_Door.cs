using UnityEngine;
using System.Collections;

public class Open_Door : MonoBehaviour {

	public float PosX=0,PosY=0;	
	Animator Door_Anim;
	// Use this for initialization
	void Start () {
		Door_Anim = GetComponent<Animator>();
	}
	bool Collision(GameObject obj){
		bool Coll = false;
			float obj_X=transform.position.x,obj_Y=transform.position.y;
			float obj_W=Mathf.Abs(transform.localScale.x),obj_H=Mathf.Abs(transform.localScale.y);
			float Floor_X=obj.transform.position.x,Floor_Y=obj.transform.position.y;
			float Floor_W=obj.transform.localScale.x,Floor_H=obj.transform.localScale.y;
			if((obj_X+obj_W/2>=Floor_X-Floor_W/2)&&(obj_X- obj_W/2<=Floor_X+Floor_W/2)){
				if((obj_Y-obj_H/2<=Floor_Y + Floor_H/2)&&(obj_Y+ obj_H/2>=Floor_Y- Floor_H/2)){
					Coll=true;
				}
			}
			
		return Coll;
	}

	// Update is called once per frame
	void Update () {
		if (Collision (GameObject.FindGameObjectWithTag ("Target"))) {
			if(Input.GetKeyDown(KeyCode.Space)){
				print ("Bump");
				Door_Anim.SetTrigger("OpenDoor");
			}else if(Input.GetKeyDown(KeyCode.W)){
				Vector3 Targ= new Vector3(PosX,PosY,0);
				GameObject.FindGameObjectWithTag ("Target").transform.Translate(Targ-transform.position);
			}
		}
	}
}

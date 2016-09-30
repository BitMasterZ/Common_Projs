using UnityEngine;
using System.Collections;

public class Floor_Move : MonoBehaviour {

	public float XSpeed=0f,YSpeed=0f;

	GameObject Back;
	// Use this for initialization
	void Start () {
		Back=GameObject.FindGameObjectWithTag("Back");
	}

	public Vector3 getSpeed(){
		return (new Vector3 (XSpeed * Time.deltaTime, YSpeed * Time.deltaTime, 0));
	}

	float getDir(float Num){
		if (Num == 0)return 0;
		return Num / Mathf.Abs (Num);
	
	}
	bool Collision(GameObject[] objs){
		bool Coll = false;
		for (int i=0; i<objs.Length; i++) {

			float obj_X=transform.position.x,obj_Y=transform.position.y;
			float obj_W=Mathf.Abs(transform.localScale.x),obj_H=Mathf.Abs(transform.localScale.y);
			float Floor_X=objs[i].transform.position.x,Floor_Y=objs[i].transform.position.y;
			float Floor_W=objs[i].transform.localScale.x,Floor_H=objs[i].transform.localScale.y;

			if(obj_X==Floor_X && obj_Y==Floor_Y && obj_W==Floor_W && obj_H==Floor_H){
				continue;
			}
			else if((obj_X+obj_W/2+getDir(XSpeed)*1.5f>=Floor_X-Floor_W/2)&&(obj_X- obj_W/2+getDir(XSpeed)*1.5f<=Floor_X+Floor_W/2)){
				if((obj_Y-obj_H/2+getDir(YSpeed)*1.5f<=Floor_Y + Floor_H/2)&&(obj_Y+ obj_H/2+getDir(YSpeed)*1.5f>=Floor_Y- Floor_H/2)){
					Coll=true;
				}
			}
			
		}
		return Coll;
		
	}
	// Update is called once per frame
	void Update () {
		transform.Translate (new Vector3(XSpeed*Time.deltaTime, YSpeed*Time.deltaTime, 0));
		if (Collision(GameObject.FindGameObjectsWithTag("Wall"))) {
			XSpeed=-XSpeed;		
		}

		if(Collision(GameObject.FindGameObjectsWithTag("Floor"))){
			if(YSpeed==0){
				XSpeed=-XSpeed;
			}
			if(XSpeed==0){
				YSpeed=-YSpeed;
			}
			else if(YSpeed!=0 && XSpeed!=0){
				XSpeed=-Random.Range(5,XSpeed);
				YSpeed=-Random.Range(5,YSpeed);
			}
		}
	}
}

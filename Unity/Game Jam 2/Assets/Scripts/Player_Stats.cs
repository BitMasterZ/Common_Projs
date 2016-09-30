using UnityEngine;
using System.Collections;


public class Player_Stats : MonoBehaviour {
	int Health=100,Max_Health=100;
	int Craziness=1,Max_Craziness=100;
	public GameObject HealthBar;
	public GameObject CrazyBar;
	public Animator Crazy, Real;
	//public Sprite FishSprite,SpiderPic;
	bool blnCrazy=false;
	GameObject[] Spiders;
	float Counter=0;
	// Use this for initialization
	void Start () {
		this.GetComponent<Animator>().runtimeAnimatorController=Real.runtimeAnimatorController;
	}

	
	// Update is called once per frame
	void Update () {
		HealthBar.transform.localScale = new Vector3 (((float)Health / Max_Health) * 7f, 0.2f, 0.2f);
		CrazyBar.transform.localScale = new Vector3 (((float)Craziness / Max_Craziness) * 7f, 0.2f, 0.2f);
		if (blnCrazy) {
			if(Counter>0.1){
				Craziness--;
				Regen(1);
				Counter=0;
			}
			Counter+=Time.deltaTime;
			if(Craziness==1){
				blnCrazy=false;
				GoPyscho();
			}
		}
		//print ((Health / Max_Health) * 15f);
		//print (Health);
	}

	public void TakeDamage(int Dmg){
		Health -= Dmg;
		//HealthBar.transform.Translate (new Vector3 ((-(float)Health / Max_Health), 0f, 0f));
	//	print ("Im Dying, Health:"+Health+" / "+Max_Health);
		if(Health<=0){
			Health=0;
			Application.LoadLevel("Dead");
		}
	}

	public void Regen(int Amt){
		Health += Amt;
		if(Health>Max_Health){
			Health=Max_Health;
		}
	}

	public bool isCrazy(){
		return blnCrazy;
	}

	public void GoPyscho(){
		this.GetComponent<Player_Movement> ().FlipMap ();
		GameObject[] Spiders=GameObject.FindGameObjectsWithTag("NEnemy");
		for(int i=0;i<Spiders.Length;i++){
			Spiders[i].GetComponent<Animator>().SetBool("blnMorph",blnCrazy);
		}


		if (blnCrazy) {
			this.GetComponent<Animator>().runtimeAnimatorController=Crazy.runtimeAnimatorController;




		}
		else{
			this.GetComponent<Animator>().runtimeAnimatorController=Real.runtimeAnimatorController;
		}
		//When the crazy meter is full
	}

	public void ImLosinIt(int Crz){
		if (blnCrazy) return;
		print ("Craziness: " + Craziness + " / " + Max_Craziness);
		Craziness += Crz;
		if (Craziness >= Max_Craziness) {
			blnCrazy=true;
			GoPyscho();

			//Craziness-=Max_Craziness
		}
	}

}

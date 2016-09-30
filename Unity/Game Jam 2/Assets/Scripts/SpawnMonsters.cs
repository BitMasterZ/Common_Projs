using UnityEngine;
using System.Collections;

public class SpawnMonsters : MonoBehaviour {
	public GameObject[] Monsters;
	public float Delay;
	float Counter=0;
	GameObject Player;
	// Use this for initialization
	void Start () {
		//Counter = Delay;
		Player = GameObject.FindGameObjectWithTag ("Player");
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 Diff = Player.transform.position - transform.position;

		if (Diff.magnitude < 15) {
			Counter++;
		}

		if(Counter>Delay){
			int Rand = Random.Range (0, 100)% Monsters.Length;
			Instantiate(Monsters[Rand],this.transform.position,Quaternion.identity);
			Counter=0;
		}
	}
}

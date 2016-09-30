using UnityEngine;
using System.Collections;

public class meleeAI : MonoBehaviour
{
	Transform player;
	Transform mySpot;
	public float moveSpeed;
	public float rotationSpeed;
	public float range;
	float stop = 1;
	public float attackSpeed=0;
	float timer;
	Player_Stats playerScript;

	
		// Use this for initialization
		void Start ()
		{
			player = GameObject.FindWithTag ("Player").transform;
			playerScript =GameObject.FindWithTag ("Player").GetComponent<Player_Stats>();
			mySpot = this.transform;
			timer = attackSpeed;
		}
	
		// Update is called once per frame
		void Update (){
		// Calculates distance from enemy to player
		var distance = Vector3.Distance(mySpot.position, player.position);

	
		// If player is out of range, turn to face player
		if (distance > range){
			mySpot.rotation = Quaternion.Slerp(mySpot.rotation, Quaternion.LookRotation(player.position - mySpot.position)
			                                  				, rotationSpeed*Time.deltaTime);
		}
		// Attack player if in range
		else if(distance <= range && distance > stop){
			
			//move towards the player
			mySpot.rotation = Quaternion.Slerp(mySpot.rotation, Quaternion.LookRotation(player.position - mySpot.position),
			                                   						rotationSpeed*Time.deltaTime);
			mySpot.position += mySpot.forward * moveSpeed * Time.deltaTime;


		}

		else if (distance <= stop) {
			mySpot.rotation = Quaternion.Slerp(mySpot.rotation,Quaternion.LookRotation(player.position - mySpot.position), 
			                                   				rotationSpeed*Time.deltaTime);
		}

		
	}

	// Deals damage to player
	void OnCollisionStay2D(Collision2D coll){
		// while colliding, call TakeDamage function in player script at attackspeed rate
		if (coll.gameObject.tag == "Player") {
			//print ("DIE!!");
			if (timer >= attackSpeed){
				playerScript.TakeDamage(5);
				timer = 0;
			}

			timer += Time.deltaTime;
		}
	}
}
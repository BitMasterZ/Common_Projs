using UnityEngine;
using System.Collections;

public class enemy_manager : MonoBehaviour {

	public GameObject enemy_prefab;

	public int ENEMY_TIMER_MAX = 120;
	int enemy_timer = 0;

	void Start() {
		enemy_timer = ENEMY_TIMER_MAX;
	}

	// Update is called once per frame
	void Update () {
		enemy_timer --;
		if(enemy_timer <= 0)
		{
			//Reset the enemy spawning timer.
			enemy_timer = ENEMY_TIMER_MAX;

			//Spawn a new enemy.
			Vector3 new_enemy_location = new Vector3(12, Random.Range(-7, 7), 0);
			Instantiate (enemy_prefab, new_enemy_location, Quaternion.identity);
		}
	}
}

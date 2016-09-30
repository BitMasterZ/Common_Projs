using UnityEngine;
using System.Collections;

public class Follow_Helli : MonoBehaviour {
	public GameObject Player;

	// Use this for initialization
	void Start () {


	}
	
	// Update is called once per frame
	void Update () {
		this.transform.position = Player.transform.position+new Vector3(0f,4f,-5f);
		this.transform.Rotate(0f,Player.transform.rotation.y-transform.rotation.y,0f);
	}
}

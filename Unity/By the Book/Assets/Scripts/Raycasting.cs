using UnityEngine;
using System.Collections;

public class Raycasting : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	//bool Raycast(Vector3 origin, Vector3 direction,/float distance, /LayerMask mask)
	// Update is called once per frame
	void Update () {

		RaycastHit hit;

		if (Physics.Raycast (transform.position, transform.forward, out hit)) {
			if(hit.collider.gameObject.tag!="Player"){
				hit.collider.gameObject.GetComponent<MeshRenderer>().material.color=Color.red;
				hit.collider.gameObject.transform.Rotate(new Vector3(0,1,0));
			}

			if(Input.GetAxis("Fire3")!=0){

				Destroy(hit.collider.gameObject);
			}
		}

	}
}

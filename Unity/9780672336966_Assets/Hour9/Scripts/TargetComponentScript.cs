using UnityEngine;
using System.Collections;

public class TargetComponentScript : MonoBehaviour {
	//we use this variable to keep track of our items scale
	private float itemScale = 1;
	//We allow the user to drag an object into the inspector
	//to act as the target of this script
	public GameObject target;
	
	// Use this for initialization
	void Start () {
		//we can find the object we want by name
		target = GameObject.Find("Cube");
		
		//we can also find the object we want by its tag
		target = GameObject.FindWithTag("TargetObject");
	}
	
	// Update is called once per frame
	void Update () {
		//Scripts naturally have access to all of the components of the 
		//object the script is attached to. We can easily access the transform
		//of the game object to manipulate its position. Here we base the 
		//translation on the WASD keys, the rotation on the mouse, and the
		//scale on the 'N' and 'M' keys
		
		target.transform.Translate(Input.GetAxis("Horizontal") * .5F, 0F, Input.GetAxis("Vertical") * .5F);
		target.transform.Rotate(Input.GetAxis("Mouse Y") * 3F, -Input.GetAxis("Mouse X") * 3F, 0F);
		if(Input.GetKey(KeyCode.N))
			itemScale -= .1F;
		else if(Input.GetKey(KeyCode.M))
			itemScale += .1F;
		target.transform.localScale = new Vector3(itemScale, itemScale, itemScale);
	}
}

using UnityEngine;
using System.Collections;

public class Functions : MonoBehaviour {

	// Use this for initialization
	void Start () {
		//We call or 'invoke' the function CallThisFunction
		CallThisFunction();
		//We call the OutputValue functions
		OutputValue(6);			//uses the first function
		OutputValue("Hello");	//uses the second function
		
		//We call the AddNum function. Since that function returns
		//a value, we need to 'catch' that value in a variable
		int x = AddNum(4, 5);
		OutputValue(x);
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	//This is a very basic function. It does not read in any values and
	//it does not return any values. 
	void CallThisFunction()
	{
		print("Function 'CallThisFunction' has been called");		
	}
	
	//This function will read in a number and output it to the screen
	void OutputValue(float item)
	{
		print("Item entered: " + item);
	}
	
	//This function is a copy of the previous 'OutputValue' function. The difference
	//with this function is that it reads in a different type. Since they both have
	//the same name, this is know as 'Overloading'
	void OutputValue(string item)
	{
		print("Item entered: " + item);
	}
	
	//The following function is our most complex function yet. It reads in two interger
	//values. It will then add them together and return them back to the caller without
	//outputing it to the screen
	int AddNum(int num1, int num2)
	{
		int result = num1 + num2;
		return result;
	}
}

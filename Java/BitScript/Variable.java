 
import java.util.*;
/**
 * 
 * @author Shobhit
 * @category Data type
 * @param <T> can be used for any common data type
 * 
 * Used to define and use a variable of a certain data type
 * Which can be referenced by the user for values and calculations
 */
public class Variable<T> {
	//References to a variable
	private Vector<T> Value= new Vector();
	private Vector<String> Name=new Vector();
	
	/**
	 * Create a variable
	 * @param name Name used to reference the variable
	 * @param Val Value of the variable
	 */
	public void createVariable (String name,T Val){
		Value.addElement(Val);
		Name.addElement(name);
	}
	
	/**
	 * Find the variable and get its value
	 * @param name Name of the variable used to get the value
	 * @return the value of the variable
	 */
	public T getValue(String name){
		//Find the name of the variable
		for(int i=0;i<Name.size();i++){
			if(name==Name.elementAt(i)|| name.equals(Name.elementAt(i))){
				//Return the value of the variable
				return Value.elementAt(i);
				
			}
		}
		//Otherwise return nothing
		return null;
		
	}
}

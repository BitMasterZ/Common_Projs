import java.awt.*;
import javax.swing.*;
import java.awt.event.*;

/**Class used to display messages in a JTextArea
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
public class clsStringDisplay implements ActionListener {

	private	Timer Typer= new Timer(1,this);//Timer used to display text on the screen
	private	char[] Text; //The Text in characters shown individually 
	private	int Counter=-1;
	private	JTextArea Display; //Where the text is to be displayed
	
/** Initializes the typewriter
 * 	@param Msg the text to display
 *  @param lblA the TextArea in which the text is displayed
 */
	public void Type(String Msg,JTextArea txtA){
		if(isRunning()==false){// If the timer is not running then 
		//Clear the previous text	
			Clear(txtA);
		//Set the text to be displayed	
			Text= Msg.toCharArray();
			Display=txtA;
		//Start the typing timer	
			Typer.start();
		}
	}

/** Clear the text container (TextArea)
 *  @param A the label which is to be cleared
 */
	public void Clear(JTextArea txtA){txtA.setText("");}
	

/** Used to type out the text into the label
 *  @param e the action event, Timer in this case 
 * 
 */
	public void actionPerformed(ActionEvent e) {//Performs the timer events
		Counter++;
		
		if(Counter==Text.length){//If limit is reached
			Typer.stop();
			Counter=-1;
		}
		
		else{//Running
			if(Text[Counter]=='\\'){// "\\" is character used to detect where to add new line
			//Goto nextLine
				Display.setText(Display.getText()+"\n");
			}
			else{
			//Print out the character to the TextArea
				Display.setText(Display.getText()+Text[Counter]);
			}
		}
		
	}

/** Returns whether or not text is being typed at that moment
 * 	@return whether or not the timer is running
 */
	public boolean isRunning(){return Typer.isRunning();}

/** Starts/stops the timer
 * 	@param blnA the state to which the timer should be set (true:run,false:stop)
 */	
	public void setRunning(boolean blnA){
		if(blnA){Typer.start();}else{Typer.stop();}
	}

/** Combine a String Array into one String
 * @param inp The String Array  
 * @return the Combination of all the Strings in the String Array
 * 
 */
	public String String_Concat(String[] inp){
		String Msg="";
	
	//Make the String array a string	
		for(int i=0;i<inp.length; i++){	Msg+=inp[i]+'\\';}
	
		return Msg;
	}

/** Sort a String array into alphabetic order
 * @param sorted the Unsorted String array  
 * @return the the String Array in Alphabetic order
 * 
 */	
	 public String[] sortStringArray(String sorted[]){
		  String temp;
		  int k = 0, v = 0, q = 1;
		  do{
			  if(sorted[k].compareToIgnoreCase(sorted[k+1]) > 0){ 
				  temp = sorted[k+1];
				  sorted[k+1] = sorted[k];
				  sorted[k] = temp;
			  }
			  k = k + q;
			  if(k == sorted.length - 1){k = 0; v = v + 1;} 
		  }while(v < sorted.length -1);
		  
		  return sorted;
	 }  	
	
}

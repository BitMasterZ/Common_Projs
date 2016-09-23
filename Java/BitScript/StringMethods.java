
/**
 * @author Shobhit
 * @category General
 * 
 * Common methods required to edit strings
 * 
 */
public class StringMethods {
	/**
	 * Count the number of occurrences of a phrase in a String  
	 * @param Source the string which is searched
	 * @param Phrase the string that is searched for in the Source string
	 * @return the number of occurrences of the phrase
	 */
	public static int characterCount(String Source, String Phrase){
		
		int Counter=0;
		int Pos=0;
		
		while(Pos!=-1){
			//find where the character is
			Pos=Source.indexOf(Phrase,Pos+1);
			//Increment count
			Counter++;	
		}
		
		return Counter;
		
	}
	/**
	 * Split a string into a String arrays of separate lines
	 * @param Source The original undivided string
	 * @param Phrase The character to split from
	 * @return The split string array
	 */
	public static String[] SplitString(String Source, String Phrase){
		
		//Check if split is possible
		int Num=characterCount(Source,Phrase);
		String Split[]= new String[Num];
		if(Num==1){Split[0]=Source;}
		
		
		int Pos=Source.indexOf(Phrase,0),Start=0,Counter=0;
		while(Pos!=-1){
			//Split
			Split[Counter]=Source.substring(Start, Pos);
			Start=Pos+Phrase.length();
			Pos= Source.indexOf(Phrase,Start);
			
			//If no more chars are found, append the rest of the string
			if(Pos==-1){
				Split[Counter+1]=Source.substring(Start, Source.length());
			}
			//Increment index
			Counter++;
		}
		
		
		
		return Split;
	}
	
	
	
}

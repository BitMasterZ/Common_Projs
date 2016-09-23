//Imports
import java.io.*;
import javax.swing.*;
import java.util.*;
import java.text.*;

/**Class which is used to create custom components(Buttons, Labels, Menus, ToolBars and ComboBoxes)
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
public class clsReader {

	private clsStringDisplay Msgs= new clsStringDisplay();//Display text onto the screen
	private String File_Direct="", File_Name;//File and directory names
	private File file;// the file which can be opened, deleted and/or encrypted
    private String [] Text;
	private JTextArea Display;//Area where the text is displayed
	String FText="";//Text read from the file
	boolean Openable=false,DirectValid=false;
	
/** Constructor for the class
 * @param txtA TextArea to which output is sent
 */	
	public clsReader(JTextArea txtA){
	//Set initial values 	
		File_Direct="";
		File_Name="";
		Display=txtA;
		File_Direct=System.getProperty("user.dir")+"\\";
	}
	
/** Check whether or not the file to be read exists
 */	
	public void OpenFile(){
		try{
		//Create new temp file	
			file= new File(File_Direct+File_Name);
			
			if(file.isFile()==false){//If this is not a file
				
				Msgs.Type("File does not exist.", Display);
				file=null;
				Openable=false;
				
			}
			else{Openable=true;}
		
		}catch(Exception e){}
	}
	
/** Read the file and display the text
 */	
	public void ReadFile(){//Attempt to read the text from the file
		
		try{
		//Scanner which reads from the file			
			Scanner reader=new Scanner(file);
			
		//Find the number of lines in the file	
			int Length=FileLines(file);
			
			Text= new String[Length];
			
		//Read the file	
			for(int i=0;i<Length;i++){Text[i]=reader.nextLine();}			
		
		//Combine the lines into one string	
			String Msg=Msgs.String_Concat(Text);
		
			
			if(Msg.equals("")){//If unable to read text from the file
				JOptionPane.showMessageDialog(null, "Unable to read text from the file, switching to alternate file reader");
				AltReadFile();
			}
			else{//If able to read text from the file
				FText=Msg;				
			}
		}
		
		catch(Exception e){Msgs.Type(e.getMessage(), Display);}
	}

/** Alternate file reading method which reads bytes from the file and converts them to a String
*/		
	
	public void AltReadFile(){
		
		try{
			FileInputStream readIt= new FileInputStream(file);
		
		//Resize the array to available number of bytes    
			byte[] Content= new byte[readIt.available()];
		
		//Read the bytes from the file	
		    readIt.read(Content);
		
		//Converts the byte array into a string    
		    String Msg= new String(Content);
		    
		    Msg=(Msg.trim().equals(""))?"No text found in this file":Msg;
		    
		//Displays the read data    
		   Display.setText(Msg);
		   
		}catch(Exception e){}
		   
	}
	
/** Check the number of lines in a file
 * @param f the File whose length is checked
 * @return the number of lines in the file
 */	
	public int FileLines(File f){
		int Len=0;
		
		try{
			Scanner r= new Scanner(f);
		//Increase counter until end of file	
			while(r.hasNextLine()){
				String spare=r.nextLine();
				Len++;
			}
			
		}catch(Exception e){}
		
		return Len;
	}

/** Check the number characters in the file
 * @param f the File whose length is checked
 * @return the number of characters in the file
 */		
	public int FileCharLen(File f){
		String Total="";
		
		try{
			Scanner r= new Scanner(f);
		//Increase counter until end of file	
			while(r.hasNextLine()){
				Total+=r.nextLine()+"\n";
			}
			
		}catch(Exception e){}
		
		return Total.length();
	}
	
	
/** Set the file directory
 * @param dir the string representation of the directory 
 */	
	public void setDirectory(String dir){
		
		DirectValid=false;
		
		File Dir= new File(dir);
		
		if(Dir.isDirectory()){//If this is a directory
			
			File_Direct=dir;
			DirectValid=true;
		}
		else{
			Msgs.Clear(Display);Msgs.Type("Invalid Directory",Display);
		}
	}
	
/** Set the name of the file
 * @param n the string representation of the file 
 */	
	public void setFName(String n){File_Name=n;}

/** get the file directory
 * @return the string representation of the directory 
 */		
	public String getDirectory(){return File_Direct;}

/** get the file name
 * @return the string representation of the file name 
 */		
	public String getFName(){return File_Name;}

/** get the details of the file
 * @return the common details of the file 
 */			
	public String getDetails(){
	//Find Last modified date and time	
		long Modified = file.lastModified();
        Date date = new Date(Modified);
        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy hh:mm");
        String Last_Modified = formatter.format(date);
        
      //return the details  
        return("Size: "+file.length()+" Bytes   File Path: "+file.getAbsolutePath()+"   Last Modified: "+Last_Modified+"   Hidden: "+((file.isHidden())?"Yes":"No")+"   Characters: "+FileCharLen(file));
	}

/** Delete the currently opened file
 */			
	public void DeleteFile(){//Attempt to delete the file
		
		boolean blnDeleted=file.delete();
		if(blnDeleted){//File deletion successful
			Msgs.Type("File has been deleted.", Display);
		}
		else{//File deletion failed
			Msgs.Type("Could not delete File.", Display);
		}
	}

/** List all of the files and directories in a directory
 */			
	public String[] ListFiles(){return new File(File_Direct).list();}
		
}

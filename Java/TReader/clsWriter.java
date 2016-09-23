//Import
import java.io.*;
import javax.swing.*;

/**Class which creates new directories and files
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
public class clsWriter {
	
	private clsStringDisplay Msgs= new clsStringDisplay(); //Display the String 
	private String File_Direct=System.getProperty("user.dir"), File_Name; //The File directory and name
	private JTextArea Display; // the place where the text is displayed

	
/**
 * Constructor for the class
 * @param txtA TextArea to which output is sent
 */	
	public clsWriter(JTextArea txtA){
	// Set default values	
		File_Direct="";
		File_Name="";
		Display=txtA;
	}
	
	
/** Create/Replace a Directory
 * @param Direct the Directory in which the new Directory is made
 */		
	public void createDirectory(String Direct){
		File dir= new File(Direct+File_Direct+"\\");

		if(dir.isDirectory()){//Check if this directory already exists
			if(JOptionPane.showConfirmDialog(null, "This directory already exists, do you wish to replace it?", "Replace", 0 )!=0){return;}
		//Delete directory
			DeleteDirect(Direct+File_Direct+"\\");
		}
	// Replace/Create directory
		dir.mkdir();
		Msgs.Type("Directory created", Display);
	}

/** Create/Replace a File
 * @param Direct the Directory in which the File is made
 * @param Txt the Text to be written in the file 
 */
	public void createFile(String Direct,String Txt){
		File f= new File(Direct+File_Name);
	
		if(f.isFile()){//Check if this file already exists
			if(JOptionPane.showConfirmDialog(null, "This file already exists, do you wish to replace it?", "Replace", 0 )!=0){return;}
		//Delete file	
			f.delete();
		}
		
		try{
		// Replace/Create file	
			f.createNewFile();
		//If file preference set to "File with displayed text", write text to file	
			if(Txt!=null){WriteFile(f,Txt);}
			Msgs.Type("File created", Display);
		}
		catch(Exception e){Msgs.Type("Unable to create this file", Display);}
	}
	
/**Set the directory name
 * @param dir the string representation of the directory 
 */	
	public void setDirectory(String dir){File_Direct=dir;}

	
/**Set the name of the file
 * @param n the string representation of the file 
 */	
	public void setFName(String n){File_Name=n;}

/**Delete a directory
 * @param dir the Directory of the file 
 */	
	private void DeleteDirect(String dir){//*************Uses Recursion****************
		File flFile= new File(dir);
		
	//Attempt to delete directory	
		boolean blnDeleted= flFile.delete();
		
		if(blnDeleted==false){//If unable to delete
			
		//All the files inside the directory	
			String[] InnerFiles=flFile.list();
			
			for(int i=0;i<InnerFiles.length;i++){
				File flInFile= new File(dir+InnerFiles[i]);
				
			//Try to delete each file	
				boolean blnDeleted2= flInFile.delete();
				//Recursion
					if(blnDeleted2==false){DeleteDirect(dir+InnerFiles[i]+"\\");}	
			}	
		}
	}
	
/**Write text into a file
 * @param fInp the File
 * @param txt the text to be written into the file
 */		
	private void WriteFile(File fInp,String txt){//Output to file
		
		try{
			FileOutputStream Writer= new FileOutputStream(fInp);
		//Write text to file
			byte[] toWrite=txt.getBytes();
			Writer.write(toWrite);
		
		}catch(Exception e){}
	}
	
	
}
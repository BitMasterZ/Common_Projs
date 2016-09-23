/**
 * 
 * @author shobhit
 *	Define the language
 */
import javax.swing.*;
import java.awt.*;


public class Executor {

	JTextArea Destination;
	Variable<String> Var= new Variable();
	
	public Executor(String Source, JTextArea Dest){
		String[] Lines=StringMethods.SplitString(Source, "\n");
		Destination=Dest;
		System.out.println("sdf");
		for(int i=0;i<Lines.length;i++){
			Run(Lines[i]);
		}
	}
	
	public String findString(String Inp){
		int Start=Inp.indexOf('"'),Pos=Inp.indexOf('"',Start+1);
		if((Start==-1)||(Pos==-1)){return null;}
		String Txt=Inp.substring(Start+1, Pos);
		
		return Txt;
		
	}
	public void Run(String Line){
		
		if(Line.indexOf("Print ")!=-1){
			
			String Text=findString(Line);
			if(Text==null){
				String varname=Line.substring(6);
				
				Destination.setText(Destination.getText()+Var.getValue(varname)+'\n');
			}else{
			Destination.setText(Destination.getText()+Text+'\n');
			}
		}
		else if(Line.indexOf("PrintC ")!=-1){
			
			String Text=findString(Line);
			if(Text==null){
				String varname=Line.substring(7);
				
				Destination.setText(Destination.getText()+Var.getValue(varname));
			}else{
			Destination.setText(Destination.getText()+Text);
			}
		}
		else if(Line.indexOf("Clear")!=-1){
			Destination.setText("");
		}
		else if(Line.indexOf("MsgBox ")!=-1){
			String Text=findString(Line);
			JOptionPane.showMessageDialog(null, Text);
		}
		
		else if(Line.indexOf("str:")!=-1){
			int Pos=Line.indexOf('=');
			String Value=null;
			if(Pos!=-1){
				int Pos2=Line.indexOf('=');
				Value=Line.substring(Pos2+1);
				
			}else{Pos=Line.length()-1;}
			
			String Name=Line.substring(4, Pos);
			Var.createVariable(Name, findString(Value));
			
			
			
		}
	}
	
}

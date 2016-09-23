//Imports
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;


/**Class in which everything is displayed
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
public class clsMain extends JFrame implements ActionListener {

//Main Menu	
	JMenuBar MnuMainBar= new JMenuBar();

//Import custom component constructors	
	clsCustomComp set1= new clsCustomComp();

//Display text on a label	
	clsStringDisplay Display= new clsStringDisplay(); 

//Main Application Menus	
	JMenu mnuApp= set1.MenuMaker('M', MnuMainBar, "Main", this);
		JMenuItem mnuIQuit= set1.MenuItemMaker('Q', mnuApp, "Quit", this);
		JMenuItem mnuIStop= set1.MenuItemMaker('S', mnuApp, "Stop", this);
		
	JMenu mnuBars= set1.MenuMaker('T', MnuMainBar, "Toolbars", this);
		JMenuItem mnuIFont= set1.MenuItemMaker('F', mnuBars, "Font Toolbar", this);
		JMenuItem mnuICreate= set1.MenuItemMaker('C', mnuBars, "Creator Toolbar", this);

	JPanel Main= new JPanel();
		
//Main Application Editor bar		
	JPanel pnlHolder= new JPanel();
		JButton jbDirect=set1.Button("Set Directory", this, pnlHolder);
		JButton jbFile=set1.Button("Set File", this, pnlHolder);
		JButton jbOpen=set1.Button("Open File", this, pnlHolder);
		JButton jbRead=set1.Button("Read File",this, pnlHolder);
		JButton jbList=set1.Button("List Files", this, pnlHolder);
		JButton jbDelete=set1.Button("Delete File", this, pnlHolder);
		
		
//Displayer bar		
	JPanel pnlText= new JPanel();
		JTextArea txtText= new JTextArea();
		JLabel lblDetails= set1.Label("File details:", this, pnlText);
		JScrollPane Text_Scroll= new JScrollPane(pnlText,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);


//Timer control options	
	JPanel pnlControlPanel= new JPanel();
		JButton jbClear=  set1.Button("Clear", this, pnlControlPanel);
		

//Font Tool bar		
		JLabel lblFSize= set1.Label("Font Size:", this, null);
		JComboBox cmbFSize=set1.ComboBox(NString(1,1001,10), this, null);
		String[] fontNames={"Arial","Matura MT Script Capitals","Times New Roman","Agency FB","Algerian","Century Gothic","Tahoma","MS Sans Serif"};
		JComboBox cmbFont= set1.ComboBox(Display.sortStringArray(fontNames), this, null);
		JButton jbFOK=  set1.Button("OK", this, null);
	JToolBar tblFontOpts= set1.ToolBox(new Component[]{lblFSize,cmbFSize,cmbFont,jbFOK});

// Creator bar
		JButton jbCDirect= set1.Button("Create Directory", this, null);
		JButton jbCFile= set1.Button("Create File", this, null);
		JComboBox cmbCFile=set1.ComboBox(new String[]{"New File","File with displayed text"}, this, null);
		JButton jbCOK=  set1.Button("OK", this, null);
	JToolBar tblCreateOpts=set1.ToolBox(new Component[]{jbCDirect,jbCFile,cmbCFile,jbCOK});

// Creator bar
	JPanel pnlCoder= new JPanel();
		JButton jbEncrypt= set1.Button("Encrypt text", this, pnlCoder);
		JButton jbDecrypt= set1.Button("Decrypt text", this, pnlCoder);
		
	
	
//Timer which repaints the applet		
	Timer tmrRefresh = new Timer(40,this);
		
	
//Default font	
	Font fntCustom= new Font("Arial",25,25);
	int FSize=25;String Style="Arial";
//File reader
	clsReader Read= new clsReader(txtText);
	clsWriter Write= new clsWriter(txtText);
	clsCoder CodeIt= new clsCoder();
	
public static void main(String args[]){
clsMain frame= new clsMain();
}
	
	
/**Initializes most of the components and sets their layout 
 */	
	public clsMain(){
		super("TReader");
		setVisible(true);
		setSize(700,700);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	//set as main menu bar
		this.setJMenuBar(MnuMainBar);
		
	//add Components	
		this.setLayout(new BorderLayout());
		
		//Main Application Editor bar
			Main.setLayout(new GridLayout(1,1));
			pnlHolder.setLayout(new GridLayout(2,1));
			Main.add(pnlHolder,BorderLayout.NORTH);
			Main.add(pnlCoder);
		
		// Displayer bar
			this.add(Text_Scroll,BorderLayout.CENTER);
			pnlText.setLayout(new BorderLayout());
			txtText.setEditable(false);
			txtText.setOpaque(false);
			pnlText.add(txtText);
			
		//Timer control bar	
			pnlControlPanel.setLayout(new GridLayout(2,1));
			pnlControlPanel.setPreferredSize(pnlControlPanel.getMinimumSize());
			this.add(pnlControlPanel,BorderLayout.WEST);	
		
		//Creator bar	
			tblCreateOpts.setPreferredSize(tblCreateOpts.getMinimumSize());
			Main.add(tblCreateOpts);	
			
					
		//Font editor bar	
			tblFontOpts.setOrientation(SwingConstants.VERTICAL);
			pnlControlPanel.add(tblFontOpts);	
			
		//details bar
			this.add(lblDetails,BorderLayout.SOUTH);	
			this.add(Main,BorderLayout.NORTH);
			
	//Default values and startups	
		
		
		Display.Type("***************Important Message***************\n\n              Welcome to the TReader Infinity \n\nThis program allows you to create,delete and read files and directories\n\nNote: We are in no way responsible if this program is used for illegal purposes (hacking, data theft, etc.) ", txtText);
		tmrRefresh.start();		
		jbRead.setEnabled(false);
		jbDelete.setEnabled(false);
		jbList.setEnabled(false);
		jbCDirect.setEnabled(false);
		jbCFile.setEnabled(false);
		
	}



/** Checks if certain event is performed 
 * @param event the ActionEvent which triggers this method
 */		
	public void actionPerformed(ActionEvent event) {
	
		Object source= event.getSource();
	
	//Timer event
		if(source==tmrRefresh){//this.paintComponents(this.getGraphics());
		txtText.setFont(fntCustom);}
		
////////////////////////////////////////////////////////////////Menus///////////////////////////////////////////////////////////////////////////////////////////////		
		
		if(source==mnuIQuit){//Quit program
			if(JOptionPane.showConfirmDialog(this,"Exit Program", "Do you wish to quit?",0)==0){System.exit(0);}
		}
		
		else if(source==mnuIFont){//Show font tool bar
			tblFontOpts.setVisible(true);
		}
		
		else if(source==mnuICreate){//Show font tool bar
			tblCreateOpts.setVisible(true);
		}
		
		else if(source==mnuIStop){//Stop the typing operation
			mnuIStop.setText((Display.isRunning()==false)?"Stop":"Start");
			Display.setRunning(!Display.isRunning());
		}
		
/////////////////////////////////////////////////////File Reader///////////////////////////////////////////////////////////////////////////////////////////////////////////////		
		
		else if(source==jbOpen){//Open file
			Read.OpenFile();
			jbRead.setEnabled(Read.Openable);
			jbDelete.setEnabled(Read.Openable);
			if(Read.Openable){lblDetails.setText(Read.getDetails());}
		}

		else if(source==jbRead){//Read and display file
			
			Read.ReadFile();
			Display.Type(Read.FText, txtText);
		}
		
		else if(source==jbDelete){//Delete currently opened file
			if(JOptionPane.showConfirmDialog(this,"Delete File", "Do you wish to delete this file?",0)==0){Read.DeleteFile();}
			
			jbRead.setEnabled(false);
			jbDelete.setEnabled(false);
		}
		
		else if(source==jbFile){//Set the name of the file	
			String N=JOptionPane.showInputDialog("Enter File Name(with type suffix)",Read.getFName());
			
			Read.setFName(N);
			
			jbRead.setEnabled(false);
			jbDelete.setEnabled(false);
		}

        else if(source==jbDirect){//Set the directory of the file
        	String N=JOptionPane.showInputDialog("Enter Directory",Read.getDirectory());
        	jbList.setEnabled(false);
        	
        	if(N==null) return;
        	if(N.charAt(N.length()-1)!='\\'){N+='\\';}
        	Read.setDirectory(N);
        	
			jbList.setEnabled(Read.DirectValid);
			jbCDirect.setEnabled(Read.DirectValid);
			jbCFile.setEnabled(Read.DirectValid);
			jbRead.setEnabled(false);
			jbDelete.setEnabled(false);
		}
        
        else if(source==jbList){//List all the files
        	Display.Type(Display.String_Concat(Read.ListFiles()),txtText);
        }
		
///////////////////////////////////////////////////Control Panel//////////////////////////////////
		
        else if(source==jbClear){//Clear the displayed text
        	Display.Clear(txtText);
        }

////////////////////////////////////////////////Font editor///////////////////////////////////////		
        
        else if(source==cmbFSize){//Set the size of the text
        	
        	FSize=Integer.parseInt(cmbFSize.getItemAt(cmbFSize.getSelectedIndex()).toString())+1;
        	fntCustom=new Font(Style,FSize,FSize);
       
        }
		
        else if(source==cmbFont){//Set the style of the font
        	try{
        		Style=cmbFont.getItemAt(cmbFont.getSelectedIndex()).toString();
        		fntCustom=new Font(Style,FSize,FSize);
            }
        	 catch(Exception e){JOptionPane.showMessageDialog(null,"This font style is not available on your computer, please select another one");}
            	
		}
        else if(source==jbFOK){//Remove Font ToolBar from screen
        	tblFontOpts.setVisible(false);
        }
		
///////////////////////////////////////Creator editor/////////////////////////////////
		
        else if(source==jbCDirect){// Create/Replace a directory
        	
        	String N= JOptionPane.showInputDialog("Enter the name of the directory you wish to create in "+Read.getDirectory(),"Default");
        	if(N==null) return;
        	Write.setDirectory(N);
        	Write.createDirectory(Read.getDirectory());
                	
        }
        
        else if(source==jbCFile){// Create/Replace a file
        	
        	String N= JOptionPane.showInputDialog("Enter the name of the file (with type suffix) you wish to create in "+Read.getDirectory(),"New file.txt");
        	if(N==null) return;
        	Write.setFName(N);
        	
        	if(cmbCFile.getSelectedIndex()==1){// Create file with displayed text
        		if(Display.isRunning()){
        			Write.createFile(Read.getDirectory(),Read.FText);
        		}else{
        			Write.createFile(Read.getDirectory(),txtText.getText());
        		}
        	}else{//Create Blank file
        		Write.createFile(Read.getDirectory(),null);	
        	}
        }
		
        else if(source==cmbCFile){//How to create the new file
        	JOptionPane.showMessageDialog(null,"File creation Preference set to "+cmbCFile.getItemAt(cmbCFile.getSelectedIndex()).toString());                	
        }
		
        else if(source==jbCOK){
        	tblCreateOpts.setVisible(false);
        }
		
///////////////////////////////////////////////Coder bar//////////////////////////////		
        
        else if(source==jbEncrypt){
            String Key= JOptionPane.showInputDialog("Enter a key phrase which will be used to encrypt the text","");
            if(Key.equals(null)) return;
        	Read.FText=CodeIt.Encrypt(Read.FText,Key);
        	Display.Type(Read.FText, txtText);
        }
		
        else if(source==jbDecrypt){
            String Key= JOptionPane.showInputDialog("Enter a key phrase which will be used to encrypt the text","");
            if(Key.equals(null)) return;
        	Read.FText=CodeIt.Decrypt(Read.FText,Key);
        	Display.Type(Read.FText, txtText);
        }
		
	}

/** Generate a string array of ascending numbers
 * @param Low the lowest number
 * @param High the highest number
 * @param Step the increment to count by
 *  @return A String array of numbers
 */	
	private String[] NString(int Low, int High,int Step){
		String[] nums = new String[(High-Low)/Step];
		
		int index=0;// the index of the String array
		
		for(int i=Low;i<High;i+=Step){
			nums[index]=i+"";
			index++;
		}

		return nums;
	}
	
}
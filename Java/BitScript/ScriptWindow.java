/**
 * Author Shobhit Adlakha
 * 
 */
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class ScriptWindow extends JFrame implements ActionListener{
	
	Timer tmrRefresh= new Timer(1,this);
	//Basic Frame
	JPanel pnlTop= new JPanel(), pnlCenter= new JPanel(), pnlBottom= new JPanel(), pnlLeft= new JPanel(), pnlRight= new JPanel();
	
	//Main windows
	JTextArea CodeWindow= new JTextArea(10,20),Console= new JTextArea(5,10);
	
	//Scroll pane
	JScrollPane jspCode = new JScrollPane(CodeWindow),jspConsole = new JScrollPane(Console);
	
	//Menus
	JMenuBar Menu= new JMenuBar();
	JMenu mnuFile= new JMenu("File");
	JMenuItem File_New= new JMenuItem("New"),File_Save= new JMenuItem("Save"),File_Exit= new JMenuItem("Exit");
	
	//Top bar
	JButton btnSave= new JButton("Save"),btnNew= new JButton("New"),btnLoad= new JButton("Load"),btnCompile= new JButton("Compile"),btnRun= new JButton("Run");
	
	//
	JTextField txtStats= new JTextField();
	
	JPanel Blank= new JPanel();
	
	public static void main(String[] args){
		ScriptWindow ABC= new ScriptWindow("Sample");
	}
	
	public ScriptWindow(String title){
		//Set up
		super(title);
		setBounds(50,50,500,500);
		setLayout(new BorderLayout());
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
		tmrRefresh.start();
		
		//Menus 
		this.setJMenuBar(Menu);
		Menu.add(mnuFile);
		mnuFile.add(File_New);
		File_New.addActionListener(this);
		mnuFile.addSeparator();
		mnuFile.add(File_Save);
		File_Save.addActionListener(this);
		mnuFile.addSeparator();
		mnuFile.add(File_Exit);
		File_Exit.addActionListener(this);
		
		
		//Top
		add(pnlTop,BorderLayout.NORTH);
		pnlTop.setBorder(BorderFactory.createRaisedBevelBorder());
		pnlTop.setLayout(new FlowLayout());
		pnlTop.add(btnNew);
		btnNew.addActionListener(this);
		pnlTop.add(btnSave);
		btnSave.addActionListener(this);
		pnlTop.add(btnLoad);
		btnLoad.addActionListener(this);
		pnlTop.add(btnCompile);
		btnCompile.addActionListener(this);
		pnlTop.add(btnRun);
		btnRun.addActionListener(this);
		
		
		//Center
		add(pnlCenter,BorderLayout.CENTER);
		pnlCenter.setLayout(new BorderLayout());
		pnlCenter.add(jspCode,BorderLayout.CENTER);
		jspCode.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.black),"Code"));
		CodeWindow.setFont(new Font("Agency FB",22,22));
		
		pnlCenter.add(jspConsole,BorderLayout.SOUTH);
		Console.setEditable(false);
		Console.setFont(new Font("Times New Roman",14,14));
		jspConsole.setBorder(BorderFactory.createTitledBorder(BorderFactory.createLineBorder(Color.black),"Console"));
		
		//Bottom
		add(pnlBottom,BorderLayout.SOUTH);
		pnlBottom.setBorder(BorderFactory.createLineBorder(Color.black));
		pnlBottom.setLayout(new GridLayout());
		pnlBottom.add(txtStats);
		txtStats.setEditable(false);
		txtStats.setFont(new Font("Times New Roman",15,15).deriveFont(Font.BOLD));
		
		
		//Left
		add(pnlLeft,BorderLayout.WEST);
		//pnlLeft.setBorder(BorderFactory.createLineBorder(Color.black));
		
		//Right
		add(pnlRight,BorderLayout.EAST);
		//pnlRight.setBorder(BorderFactory.createLineBorder(Color.black));
		
		
	}
	
	

	
	
	public void actionPerformed(ActionEvent event){
		
		if(event.getSource()==tmrRefresh){
			//Update stats			
			int Length=StringMethods.characterCount(CodeWindow.getText(),"\n");
			int Spaces=StringMethods.characterCount(CodeWindow.getText()," ");
			int Characters=(CodeWindow.getText().length()-Length-Spaces+2);
			//Display stats
			txtStats.setText("Lines: "+Length+"                                      Characters: "+((Characters<0)?0:Characters));
			
		}
		else if (event.getSource()==btnRun){
			//Run the code
			Executor RunIt= new Executor(CodeWindow.getText(),Console);
			
		}
	}
	
	
	
}

import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
/** The main class that uses all of the provided classes with a GUI
* @author Shobhit
* @version 1.0
*/
public class clsMain extends JFrame implements ActionListener{
	//GUI Variables
	JPanel pnlTOP = new JPanel(), pnlLEFT = new JPanel(), pnlBOT = new JPanel(), 
		pnlRIGHT = new JPanel(), pnlCENTER = new JPanel();
	JLabel lblBOT = new JLabel("");	
	Timer tmrANIM = new Timer(1, this);

	//Instances
	GridMap MAP = new GridMap(50, 30, 20);

	Player P1 = new Player(10, 10, 10, 10, this);

	/** 
	* Constructor for the main class
	* @param W Width of the GUI window
	* @param H Height of the GUI window
	*/

	public clsMain(int W ,int H){
		//Initial Setup
		super("2D RPG");
		setBounds(this.getToolkit().getScreenSize().width / 2 - W / 2, 
			this.getToolkit().getScreenSize().height / 2 - H / 2, W, H);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		//Add J Components
		this.setLayout(new BorderLayout());
			//TOP
		this.add(pnlTOP, BorderLayout.NORTH);
			//BOTTOM
		this.add(pnlBOT, BorderLayout.SOUTH);
		pnlBOT.add(lblBOT);
			//LEFT
		this.add(pnlLEFT,BorderLayout.WEST);
			//RIGHT
		this.add(pnlRIGHT,BorderLayout.EAST);
			//CENTER
		this.add(pnlCENTER,BorderLayout.CENTER);
	
		setVisible(true);
		tmrANIM.start();
		

	}

	public static void main (String args[]){
		//Obj instance for clsMain
		clsMain ABC = new clsMain(600, 600);
	}

	public void actionPerformed(ActionEvent event){
		update(pnlCENTER.getGraphics());
	}

	/** 
	* Draw things on the screen using double buffering
	* @param g
	*/
	public void update(Graphics g){
		//Double buffering
		Image dbImage = createImage(getWidth(), getHeight());
		Graphics dbg = dbImage.getGraphics();
		
		//What to draw

			//Draw the GridMap		
		MAP.MDraw(dbg, 1);

		P1.mDraw(dbg, 1, Color.GREEN);

		//Double buffering
		g.drawImage(dbImage, 0, 0, this);
		
	}


}

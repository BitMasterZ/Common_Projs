import java.awt.*;
import javax.swing.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
/**
* The main class that uses all of the provided classes with a GUI
* @author Shobhit
* @version 1.0
*/
public class clsMain extends JFrame implements ActionListener{

	//GUI Variables
	JPanel pnlTOP = new JPanel(), pnlLEFT = new JPanel(new BorderLayout()), pnlBOT = new JPanel(),
		pnlRIGHT = new JPanel(), pnlCENTER = new JPanel(), pnlLEFT_TOP = new JPanel(), pnlLEFT_BOT = new JPanel();
	JLabel lblTITLE = new JLabel(""), lblSTATS = new JLabel("No text");
	JMenuBar MAIN_MENU = new JMenuBar();

	/**
	* Constructor for the main class
	* @param W Width of the GUI window
	* @param H Height of the GUI window
	*/
	public clsMain(int W ,int H){
		//Initial Setup
		super("Chess");
		setBounds(this.getToolkit().getScreenSize().width / 2 - W / 2,
			this.getToolkit().getScreenSize().height / 2 - H / 2, W, H);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		//Add J Components
		this.setLayout(new BorderLayout());

			//TOP
		this.add(pnlTOP, BorderLayout.NORTH);
		pnlTOP.setBorder(BorderFactory.createLineBorder(Color.black, 2));
		pnlTOP.add(lblTITLE);
		lblTITLE.setFont(new Font("Arial", 40, 40));

			//BOTTOM
		this.add(pnlBOT, BorderLayout.SOUTH);
		pnlBOT.setBorder(BorderFactory.createEtchedBorder());
		pnlBOT.add(lblSTATS);
		lblSTATS.setFont(new Font("Century Gothic", 20, 20));

			//LEFT
		this.add(pnlLEFT,BorderLayout.WEST);
		// pnlLEFT.setPreferredSize(new Dimension(getWidth() / 4, getHeight()));
		// pnlLEFT.setBorder(BorderFactory.createBevelBorder(0));

			//RIGHT
		this.add(pnlRIGHT,BorderLayout.EAST);

			//CENTER
		this.add(pnlCENTER,BorderLayout.CENTER);

			//MENU BAR
		this.setJMenuBar(MAIN_MENU);

		setVisible(true);

		//Start game

	}


	public void actionPerformed(ActionEvent event){

	}

	public static void main(String[] args){
		clsMain ABC = new clsMain(500,500);
	}

/*
	import java.awt.image.*;
		public void update(Graphics g){
			//Double buffering
			Image dbImage=createImage(getWidth(),getHeight());
			Graphics dbg=dbImage.getGraphics();

			//What to draw

			//Double buffering
			g.drawImage(dbImage,0,0,this);

		}
*/

}

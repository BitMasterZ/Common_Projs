import javax.imageio.ImageIO;
import javax.swing.*;
import java .io.*;
import java.awt.*;
import java.awt.event.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.jar.*;
import java.util.zip.*;
import java.util.Scanner;

public class SpriteTester extends JFrame implements ActionListener {
	
	JPanel pnlTOP = new JPanel(), pnlLEFT = new JPanel(new BorderLayout()), pnlRIGHT = new JPanel(),
		pnlBOTTOM = new JPanel(), pnlCENTER = new JPanel();
	JPanel pnlLEFT_TOP = new JPanel(), pnlLEFT_BOTTOM = new JPanel(new GridLayout(6,4));
	JPanel pnlEMPTY = new JPanel();
	JLabel lblTITLE = new JLabel("Sprite Tester");
	JLabel lblWidth = new JLabel("Width:"), lblHeight = new JLabel("Height:"), lblFX = new JLabel("FX:"), 
		lblFY = new JLabel("FY:"), lblGX = new JLabel("GX:"), lblGY = new JLabel("GY:");
	JTextField txtWidth = new JTextField(), txtHeight = new JTextField(), txtFX= new JTextField(), 
		txtFY = new JTextField(), txtGX = new JTextField(),txtGY = new JTextField();
	JButton[] jbLEFT = new JButton[6], jbRIGHT = new JButton[6];
	JButton jbANIM_FX = new JButton("Animate X"), jbANIM_FY = new JButton("Animate Y"), 
		jbANIM_DELAY = new JButton("Animation Delay");
	JMenuBar MENU = new JMenuBar();
	JMenu mnuFILE = new JMenu("File"), mnuAPP = new JMenu("App");
	JMenuItem mnuFILE_DIRECT = new JMenuItem("Change Directory"), mnuFILE_OPEN = new JMenuItem("Open File"),
		mnuFILE_SAVE = new JMenuItem("Save Dimensions");
	JMenuItem mnuAPP_HELP = new JMenuItem("Help"), mnuAPP_EXIT = new JMenuItem("Exit App");
	
	double Width = 0, Height = 0, GX = 1, GY = 1;
	int FX = 0, FY = 0;
	String DIRECT = System.getProperty("user.dir"), FILEN = "";
	Timer tmrANIM = new Timer(1,this);
	int Delay = 0, Counter = 0, MaxFX = -1, MaxFY = -1;
	InputStream INP = null;
	
	public SpriteTester(){
		super("Animation Tester <Programmed by BitMaster>");
		this.setName("Sprite Tester");
		int W = 700, H = 700;
		setBounds(this.getToolkit().getScreenSize().width / 2 - W / 2, this.getToolkit().getScreenSize().height / 2 - H / 2, W, H);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setLayout(new BorderLayout());
		//this.setResizable(false);
		String Left = "\u2190", Right = "\u2192";
		
		for(int i = 0; i < jbLEFT.length; i++){
			jbLEFT[i] = new JButton(Left);
			jbLEFT[i].addActionListener(this);
			jbRIGHT[i] = new JButton(Right);
			jbRIGHT[i].addActionListener(this);
		}

		add(pnlTOP,BorderLayout.NORTH);
		pnlTOP.add(lblTITLE);
		pnlTOP.setBorder(BorderFactory.createCompoundBorder(BorderFactory.createBevelBorder(0), 
			BorderFactory.createLineBorder(Color.black)));
		lblTITLE.setFont(new Font("Algerian", 36, 36).deriveFont(Font.PLAIN));
		add(pnlLEFT,BorderLayout.WEST);
		pnlLEFT.setBorder(BorderFactory.createLineBorder(Color.black));
		//pnlLEFT.setPreferredSize(new Dimension(200,500));
		this.setJMenuBar(MENU);
		MENU.add(mnuFILE);
		mnuFILE.add(mnuFILE_DIRECT);
		mnuFILE_DIRECT.addActionListener(this);
		mnuFILE.add(mnuFILE_OPEN);
		mnuFILE_OPEN.addActionListener(this);
		mnuFILE.add(mnuFILE_SAVE);
		mnuFILE_SAVE.addActionListener(this);
		MENU.add(mnuAPP);
		mnuAPP.add(mnuAPP_HELP);
		mnuAPP_HELP.addActionListener(this);
		mnuAPP.add(mnuAPP_EXIT);
		mnuAPP_EXIT.addActionListener(this);
		pnlLEFT.add(pnlLEFT_TOP,BorderLayout.NORTH);
		//pnlLEFT_TOP.setBorder(BorderFactory.createLineBorder(Color.black));
		pnlLEFT_TOP.setPreferredSize(new Dimension(250,250));
		pnlLEFT.add(pnlLEFT_BOTTOM, BorderLayout.SOUTH);
		pnlLEFT_BOTTOM.add(lblWidth);
		pnlLEFT_BOTTOM.add(txtWidth);
		pnlLEFT_BOTTOM.add(jbLEFT[0]);
		pnlLEFT_BOTTOM.add(jbRIGHT[0]);
		pnlLEFT_BOTTOM.add(lblHeight);
		pnlLEFT_BOTTOM.add(txtHeight);
		pnlLEFT_BOTTOM.add(jbLEFT[1]);
		pnlLEFT_BOTTOM.add(jbRIGHT[1]);
		pnlLEFT_BOTTOM.add(lblFX);
		pnlLEFT_BOTTOM.add(txtFX);
		pnlLEFT_BOTTOM.add(jbLEFT[2]);
		pnlLEFT_BOTTOM.add(jbRIGHT[2]);
		pnlLEFT_BOTTOM.add(lblFY);
		pnlLEFT_BOTTOM.add(txtFY);
		pnlLEFT_BOTTOM.add(jbLEFT[3]);
		pnlLEFT_BOTTOM.add(jbRIGHT[3]);
		pnlLEFT_BOTTOM.add(lblGX);
		pnlLEFT_BOTTOM.add(txtGX);
		pnlLEFT_BOTTOM.add(jbLEFT[4]);
		pnlLEFT_BOTTOM.add(jbRIGHT[4]);
		pnlLEFT_BOTTOM.add(lblGY);
		pnlLEFT_BOTTOM.add(txtGY);
		pnlLEFT_BOTTOM.add(jbLEFT[5]);
		pnlLEFT_BOTTOM.add(jbRIGHT[5]);
		pnlLEFT_BOTTOM.setPreferredSize(new Dimension(250, getHeight() - 420));
		//add(pnlRIGHT,BorderLayout.EAST);
		add(pnlCENTER, BorderLayout.CENTER);
		add(pnlBOTTOM, BorderLayout.SOUTH);
		pnlBOTTOM.add(jbANIM_FX);
		jbANIM_FX.addActionListener(this);
		pnlBOTTOM.add(jbANIM_FY);
		jbANIM_FY.addActionListener(this);
		pnlBOTTOM.add(jbANIM_DELAY);
		jbANIM_DELAY.addActionListener(this);
		Display();
	
		tmrANIM.start();
	}

	public static void main(String[] args){
		SpriteTester ABC = new SpriteTester();
	}

	public void Input(){
		try{
			Width = Double.parseDouble(txtWidth.getText());
			Height = Double.parseDouble(txtHeight.getText());
			FX = Integer.parseInt(txtFX.getText());
			FY = Integer.parseInt(txtFY.getText());
			GX = Double.parseDouble(txtGX.getText());
			GY = Double.parseDouble(txtGY.getText());
		}catch(Exception e){}
	}

	public void Display(){
		txtWidth.setText(Width + "");
		txtHeight.setText(Height + "");
		txtFX.setText(FX + "");
		txtFY.setText(FY + "");
		txtGX.setText(GX + "");
		txtGY.setText(GY + "");
	}

	public void actionPerformed(ActionEvent event){
		if(event.getSource() == tmrANIM){
			if(Delay == 0) Input();
			update(pnlLEFT_TOP.getGraphics());
			update2(pnlCENTER.getGraphics());
			Animate();
		}
		if (event.getSource() == mnuFILE_DIRECT){
			try{
				String Dir = JOptionPane.showInputDialog(null, "Change Directory to:", DIRECT);
				if(Paths.get(Dir).toFile().exists()){
					DIRECT=Dir;
				}
				else{
					JOptionPane.showMessageDialog(null, "Not a valid directory");
				}
			}catch(Exception e){JOptionPane.showMessageDialog(null, "Not a valid input");}
		}
	
		if (event.getSource() == mnuFILE_OPEN){
			FILEN = JOptionPane.showInputDialog(null, "Open Image:", FILEN);
		}

		if (event.getSource() == mnuAPP_HELP){
			String Text = "BASIC STUFF:\n 1) Select the Directory\n";
			Text += "2) Select the File Name\n";
			Text += "3) Modify the width and height to display the image on the screen\n";
			Text += "4) FX and FY refer to the X and Y frame numbers\n";
			Text += "5) GX and GY refer to the X and Y growth factors\n";
			Text += "\nANIMATION:\n";
			Text += "1) Click Animate X to set the max FX (animates in x direction)\n";
			Text += "2) Click Animate Y to set the max FY (animates in y direction)\n";
			Text += "3) Click Animation Delay to set animation delay (low=fast, high=slow)\n";
			Text += "4) You can modify the FX/FY while the animation is running using the arrow buttons\n";
			Text += "\nSAVING:\n";
			Text += "1) Press the save button to save the width,height, GX and GY in a text file\n";
			JOptionPane.showMessageDialog(null, Text, "Instructions", JOptionPane.INFORMATION_MESSAGE);
		}
	
		if (event.getSource() == mnuAPP_EXIT){
			int Opt = JOptionPane.showConfirmDialog(null, "Do you wish to quit", "Quit?", JOptionPane.YES_NO_OPTION);
			if(Opt == JOptionPane.YES_OPTION){
				System.exit(0);
			}
		}

		if(event.getSource() == jbANIM_FY){
			MaxFY = Integer.parseInt(JOptionPane.showInputDialog("Enter new FY", MaxFY));
			MaxFX = -1;
		}

		if(event.getSource() == jbANIM_FX){
			MaxFX = Integer.parseInt(JOptionPane.showInputDialog("Enter new FX", MaxFX));
			MaxFY = -1;
		}

		if(event.getSource() == jbANIM_DELAY){
			Delay = Integer.parseInt(JOptionPane.showInputDialog("Enter new delay", Delay));
		}
	
		if(event.getSource() == mnuFILE_SAVE){
			String FName = FILEN + ".txt";
			try{
				File txtFile = Paths.get(DIRECT + "\\" + FName).toFile();
				txtFile.createNewFile();
				FileOutputStream FWrite = new FileOutputStream(txtFile);
				String Text = "Width: " + Width + System.lineSeparator() + "Height: " + Height + System.lineSeparator();
				Text += System.lineSeparator() + "GX: " + GX + System.lineSeparator() + "GY: " + GY;
				FWrite.write(Text.getBytes());
				JOptionPane.showMessageDialog(null, "Saved Successfully");
			}catch(Exception e){JOptionPane.showMessageDialog(null, "Save Failed");}
		}

		for(int i = 0; i < jbLEFT.length; i++){
			int Dir = 0;
			if(event.getSource() == jbLEFT[i]){
				Dir = -1;
			}
			else if(event.getSource() == jbRIGHT[i]){
				Dir = 1;
			}else{
				Dir = 0;
			}

			if(Dir != 0){
				switch(i){
					case 0:
						Width += 0.5 * Dir;
					break;
					
					case 1:
						Height += 0.5 * Dir;
					break;
	
					case 2:
						FX += 1 * Dir;
					break;
					
					case 3:
						FY += 1 * Dir;
					break;
	
					case 4:
						GX += 0.5 * Dir;
					break;
	
					case 5:
						GY += 0.5 * Dir;
					break;
				}
				
				Display();
			}
		}
	}

	public void update(Graphics g){
		//Double buffering
		Image dbImage = createImage(getWidth(), getHeight());
		Graphics dbg = dbImage.getGraphics();
		
		//What to draw
		dbg.setColor(Color.LIGHT_GRAY.brighter());
		dbg.fill3DRect(0, 0, pnlLEFT_TOP.getWidth(), pnlLEFT_TOP.getHeight(), false);
		dbg.setColor(Color.black);
		try{
			Image imgTHING = ImageIO.read(Paths.get(DIRECT, FILEN).toFile());
			dbg.drawImage(imgTHING, 0, 0, pnlLEFT_TOP.getWidth(), pnlLEFT_TOP.getHeight(), null);
		}catch(Exception e){dbg.drawString("No Image to Display", pnlLEFT_TOP.getWidth() / 2 - 55, pnlLEFT_TOP.getHeight() / 2);}
		
		//Double buffering
		g.drawImage(dbImage, 0, 0, this);
	}

	public void update2(Graphics g){
		//Double buffering
		Image dbImage = createImage(getWidth(), getHeight());
		Graphics dbg = dbImage.getGraphics();
		
		//What to draw
		
		//Draw character
		try{
			Image imgTHING = ImageIO.read(Paths.get(DIRECT, FILEN).toFile());
			int X = 10,Y = 10;
			dbg.drawImage(imgTHING, (int)(X), (int)(Y), (int)(X + Width * GX), (int)(Y + Height * GY),
				(int)(Width * FX), (int)(Height * FY), (int)(Width * FX + Width), (int)(Height * FY + Height), null);
		}catch(Exception e){}
	
		//Double buffering
		g.drawImage(dbImage, 0, 0, this);
	}

	public void Animate(){
		if(Delay == 0) return;
		Display();
		Counter++;
		if(Counter > Delay){
			if(MaxFX != -1){
				FX++;
				if(FX > MaxFX){FX = 0;}
			}
	
			if(MaxFY != -1){
				FY++;
				if(FY > MaxFY){FY = 0;}
			}

			Counter = 0;
		}
	}

	
}
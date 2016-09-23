import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class clsGame_BrickBreaker extends JApplet implements ActionListener{

	Timer tmrANIM=new Timer(1,this);
	int TextH=100;
	BrickBreaker_Paddle PLAYERA;
	BrickBreaker_Ball PRIM_BALL;
	BrickBreaker_Brick[] BRICKS= new BrickBreaker_Brick[150];
	public void init(){
		setSize(500,500);
		this.setBackground(Color.black);
		PLAYERA= new BrickBreaker_Paddle(50,450,120,10,Color.red);
		this.addMouseMotionListener(PLAYERA);
		this.addMouseListener(PLAYERA);
		
		PRIM_BALL=new BrickBreaker_Ball(PLAYERA.W/2,PLAYERA.Y-10,5,Color.white,PLAYERA);
		PLAYERA.setBall(PRIM_BALL);
		for(int i=0;i<BRICKS.length;i++){
			BRICKS[i]=new BrickBreaker_Brick(100,100,30,15,Color.LIGHT_GRAY);
			BRICKS[i].Spawn(getWidth(), PLAYERA.Y-100,BRICKS);
		}
		tmrANIM.start();
	}

	
	public void paint(Graphics g){
		update(g);
		this.requestFocus();
	}
	public void update(Graphics g){
		//Double buffering
		Image dbImage=createImage(getWidth(),getHeight());
		Graphics dbg=dbImage.getGraphics();
		
		//What to draw
		PLAYERA.Draw(dbg);
		PRIM_BALL.Draw(dbg);
		for(int i=0;i<BRICKS.length;i++){
			BRICKS[i].Draw(dbg);
		}
		//Double buffering
		g.drawImage(dbImage,0,0,this);
				
	}

	

	public void actionPerformed(ActionEvent event) {
		repaint();
		PLAYERA.Y=this.getHeight()-50;
		PRIM_BALL.setWallDims(getWidth(), getHeight());
		PRIM_BALL.BrickCollision(BRICKS);
	}
}

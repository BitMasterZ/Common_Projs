import javax.swing.*;

import java.awt.*;
import java.awt.event.*;

public class clsGame_Pong extends JApplet implements ActionListener{

	Timer tmrANIM=new Timer(1,this);
	Pong_Paddle PLAYERA,PLAYERB;
	Pong_Ball PRIM_BALL;
	int TextH=100;
	public void init(){
		setSize(500,500);
		PLAYERA= new Pong_Paddle(50,50,10,100,Color.red,new int[]{KeyEvent.VK_W,KeyEvent.VK_S,KeyEvent.VK_A,KeyEvent.VK_D});
		PLAYERB= new Pong_Paddle(400,50,10,100,Color.blue,new int[]{KeyEvent.VK_UP,KeyEvent.VK_DOWN,KeyEvent.VK_LEFT,KeyEvent.VK_RIGHT});
		PRIM_BALL= new Pong_Ball(getWidth()/2,getHeight()/2,7,Color.white);
		
		this.addKeyListener(PLAYERA);
		this.addKeyListener(PLAYERB);
		PRIM_BALL.Vx=-3;
		PRIM_BALL.Vy=-5;
		PRIM_BALL.setPads(PLAYERA, PLAYERB);
		
		this.requestFocus();
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
		dbg.setColor(Color.black);
		dbg.fill3DRect(0, 0, this.getWidth(), this.getHeight(), true);
		dbg.setColor(Color.white);
		dbg.draw3DRect(1, 1, this.getWidth()-2, this.getHeight()-2-TextH, true);
		dbg.draw3DRect(2, 2, this.getWidth()-4, this.getHeight()-4-TextH, true);
		dbg.draw3DRect(3, 3, this.getWidth()-6, this.getHeight()-6-TextH, true);
		dbg.draw3DRect(this.getWidth()/2, 0, this.getWidth()/2, this.getHeight(), true);
		dbg.setFont(new Font("Old English Text MT",50,50));
		dbg.drawString("Player 1", this.getWidth()/2-200,this.getHeight()-TextH/2);
		dbg.drawString("Player 2", this.getWidth()/2+25,this.getHeight()-TextH/2);
		dbg.setFont(new Font("Agency FB",50,50));		
		dbg.drawString(""+PLAYERA.Score, 25,this.getHeight()-TextH/2);
		dbg.drawString(""+PLAYERB.Score, this.getWidth()-100,this.getHeight()-TextH/2);
		
		PLAYERA.Draw(dbg);
		PLAYERB.Draw(dbg);
		PRIM_BALL.Draw(dbg);
		
		//Double buffering
		g.drawImage(dbImage,0,0,this);
				
	}


	public void actionPerformed(ActionEvent event) {
		repaint();
		PLAYERA.setWallDims(this.getWidth(), getHeight()-TextH);
		PLAYERA.PaddleCollision(PLAYERB);
		PLAYERB.setWallDims(this.getWidth(), getHeight()-TextH);
		PRIM_BALL.setWallDims(this.getWidth(), getHeight()-TextH);
		PRIM_BALL.PaddleCollision(PLAYERA);
		PRIM_BALL.PaddleCollision(PLAYERB);
	}
}

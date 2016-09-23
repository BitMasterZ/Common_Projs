import java.awt.*;
import java.awt.event.*;

public class BrickBreaker_Paddle implements MouseMotionListener,MouseListener{
	int X,Y;
	int W,H;
	int Vx,Vy;
	Color PADCOL;
	int Score=0;
	BrickBreaker_Ball Ball=null;
	
	public BrickBreaker_Paddle(int x,int y, int w, int h,Color clr){
		X=x;
		Y=y;
		W=w;
		H=h;
		PADCOL=clr;	
	}
	
	public void setBall(BrickBreaker_Ball ball){
		Ball=ball;
	}
	
	public void Draw(Graphics g){
		g.setColor(PADCOL);
		g.draw3DRect(X, Y, W, H, true);
		g.fill3DRect(X, Y, W, H, true);
	}

	public boolean WallCollision(int left,int top,int width,int height){
		return false;
	}

	@Override
	public void mouseDragged(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseMoved(MouseEvent event) {
		X=event.getX()-W/2;
		
	}


	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mouseEntered(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mouseExited(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void mousePressed(MouseEvent event) {
		if(Ball.blnGLUED){
			Ball.Vx=-1;
			Ball.Vy=-1;
			Ball.blnGLUED=false;
		}else{
			Ball.Vx*=5;
			Ball.Vy*=5;			
		}
		
		
	}


	@Override
	public void mouseReleased(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	
}


import java.awt.*;
import java.awt.event.*;

public class Pong_Paddle implements KeyListener{
	int X,Y;
	int W,H;
	int Vx,Vy;
	Color PADCOL;
	int KEYS[];
	int Score=0;
	Dimension WALL_DIMS=new Dimension(500,500);
	
	public Pong_Paddle(int x,int y, int w, int h,Color clr,int[] Keys){
		X=x;
		Y=y;
		W=w;
		H=h;
		PADCOL=clr;
		KEYS=Keys;		
	}
	
	public void setWallDims(int w,int h){
		WALL_DIMS= new Dimension(w,h);
	}
	
	public void Draw(Graphics g){
		g.setColor(PADCOL);
		g.draw3DRect(X, Y, W, H, true);
		g.fill3DRect(X, Y, W, H, true);
		
		if(WallCollision(0,0,WALL_DIMS.width,WALL_DIMS.height))return;
		X+=Vx;
		Y+=Vy;

		
	}

	public void PaddleCollision(Pong_Paddle pad){
		if((X+Vx+W>=pad.X+pad.Vx) &&(X+Vx<=pad.X+pad.Vx+pad.W)){
			if((Y+Vy+H>=pad.Y+pad.Vy) &&(Y+Vy<=pad.Y+pad.Vy+pad.H)){
				Vx=-Vx;
				Vy=-Vy;
				pad.Vx=-pad.Vx;
				pad.Vy=-pad.Vy;
			}
		}
	}
	public boolean WallCollision(int left,int top,int width,int height){
		if((X+Vx+W>=left+width) ||(X+Vx<=left)){
			return true;
		}
		if((Y+Vy+H>=top+height) ||(Y+Vy<=top)){
			return true;
		}
		return false;
	}
	@Override
	public void keyPressed(KeyEvent event) {
		
		if(event.getKeyCode()==KEYS[0]){
			Vy=-5;
			Vx=0;
		}
		else if(event.getKeyCode()==KEYS[1]){
			Vy=5;
			Vx=0;
		}
		else if(event.getKeyCode()==KEYS[2]){
			Vy=0;
			Vx=-5;
		}
		else if(event.getKeyCode()==KEYS[3]){
			Vy=0;
			Vx=5;
		}
		
	}

	@Override
	public void keyReleased(KeyEvent event) {

		
	}

	@Override
	public void keyTyped(KeyEvent event) {
				
	}
	
}

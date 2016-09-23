import java.awt.*;

public class Pong_Ball {
	int X,Y;
	int R;
	int Vx,Vy;
	Color BALL_COL;
	Dimension WALL_DIMS=new Dimension(500,500);
	Pong_Paddle PadA=null,PadB=null;
	public Pong_Ball(int x,int y,int r,Color clr){
		X=x;
		Y=y;
		R=r;
		BALL_COL=clr;
	}
	
	public void setWallDims(int w,int h){
		WALL_DIMS= new Dimension(w,h);
	}
	public void setPads(Pong_Paddle padA,Pong_Paddle padB){
		PadA=padA;
		PadB=padB;
		
	}
	
	public void Draw(Graphics g){
		g.setColor(BALL_COL);
		g.drawOval(X-R, Y-R, 2*R, 2*R);
		g.fillOval(X-R, Y-R, 2*R, 2*R);
		
		if(WallCollision(0,0,WALL_DIMS.width,WALL_DIMS.height))return;
		X+=Vx;
		Y+=Vy;
		
	}
	
	public boolean WallCollision(int left,int top,int width,int height){
		if((X+Vx+R>=left+width) ||(X+Vx-R<=left)){
			
			if(Vx<0){
				PadB.Score++;
			}else{
				PadA.Score++;
			}
			
			Vx=-Vx;
			return true;
		}
		if((Y+Vy+R>=top+height) ||(Y+Vy-R<=top)){
			Vy=-Vy;
			return true;
		}
		return false;
	}
	
	public void PaddleCollision(Pong_Paddle pad){
		if((X+Vx+R>=pad.X+pad.Vx) &&(X+Vx-R<=pad.X+pad.Vx+pad.W)){
			if((Y+Vy+R>=pad.Y+pad.Vy) &&(Y+Vy-R<=pad.Y+pad.Vy+pad.H)){

				if(Math.round(Math.random()*2000)%2==0){
					Vx=pad.Vx;
					Vy=-Vy;
				}else{
					Vy=-Vy;
					Vx=-Vx;
				}
				
			}
		}
	}
}

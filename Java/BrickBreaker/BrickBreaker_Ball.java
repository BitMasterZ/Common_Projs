import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;


public class BrickBreaker_Ball {
	int X,Y;
	int R;
	int Vx,Vy;
	Color BALL_COL;
	Dimension WALL_DIMS=new Dimension(500,500);
	BrickBreaker_Paddle Pad;
	boolean blnGLUED=false;
	public BrickBreaker_Ball(int x,int y,int r,Color clr,BrickBreaker_Paddle pad){
		X=x;
		Y=y;
		R=r;
		BALL_COL=clr;
		Pad=pad;
		blnGLUED=true;
	}
	
	public void setWallDims(int w,int h){
		WALL_DIMS= new Dimension(w,h);
	}
	
	public void updatePosition(){
		if(blnGLUED){
			
			X=Pad.X+Pad.W/2;
			Y=Pad.Y-2*R;
			Vx=0;
			Vy=0;
		}else{
			if(WallCollision(0,0,WALL_DIMS.width,WALL_DIMS.height))return;
			PaddleCollision(Pad);
			X+=Vx;
			Y+=Vy;
			
		}
	}
	public void Draw(Graphics g){
		g.setColor(BALL_COL);
		g.drawOval(X-R, Y-R, 2*R, 2*R);
		g.fillOval(X-R, Y-R, 2*R, 2*R);
		
		
		updatePosition();
		
	}
	
	public boolean WallCollision(int left,int top,int width,int height){
		if((X+Vx+R>=left+width) ||(X+Vx-R<=left)){
			Vx=-Vx;
			return true;
		}
		if((Y+Vy+R>=top+height) ||(Y+Vy-R<=top)){
			Vy=-Vy;
			return true;
		}
		return false;
	}
	
	public void PaddleCollision(BrickBreaker_Paddle pad){
		if((X+Vx+R>=pad.X+pad.Vx) &&(X+Vx-R<=pad.X+pad.Vx+pad.W)){
			if((Y+Vy+R>=pad.Y+pad.Vy) &&(Y+Vy-R<=pad.Y+pad.Vy+pad.H)){
				int L=20,L2=5;
				if(X>pad.X+pad.W/2+L && X<pad.X+pad.W-L2){
					Vy=-Vy;
					Vx=1;				
				}
				else if(X<pad.X+pad.W/2-L && X>pad.X+L2){
					Vy=-Vy;
					Vx=-1;				
				}	
				else if(X<pad.X+L2){
					Vy=-Vy;
					Vx=-2;				
				}
				else if(X>pad.X+pad.W-L2){
					Vy=-Vy;
					Vx=2;				
				}else{
					Vy=-Vy;
					Vx=0;				
				}
				
			}
		}
	}
	public void BrickCollision(BrickBreaker_Brick[] bricks){
		for(int i=0;i<bricks.length;i++){
			if(X+R+Vx>=bricks[i].X && X-R+Vx<=bricks[i].X+bricks[i].W){
				if(Y+R+Vy>=bricks[i].Y && Y-R+Vy<=bricks[i].Y+bricks[i].H){
					bricks[i].Destroy();
					switch((int)(Math.random()*500)%5){
					
						case 0:
							Vx=-Norm(Vx)*(int)(Math.random()*2+1);
							Vy=Norm(Vy)*(int)(Math.random()*2+1);						
							break;
						case 1:
							Vx=Norm(Vx)*(int)(Math.random()*2+1);
							Vy=-Norm(Vy)*(int)(Math.random()*2+1);						
							break;
						
						default:
							Vx=-Norm(Vx)*(int)(Math.random()*2+1);
							Vy=-Norm(Vy)*(int)(Math.random()*2+1);						
							break;
					}
					
				}
			}
		}
	}
	
	public int Norm(int Num){
		if(Num==0)return 0;
		return Num/Math.abs(Num);
	}
	
}

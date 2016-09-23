import java.awt.*;

public class BrickBreaker_Brick {
	public int X,Y;
	public int W,H;
	Color clrCOLOR;
	boolean blnDESTROYED=false;
	public BrickBreaker_Brick(int x,int y,int w,int h,Color clr){
		X=x;
		Y=y;
		W=w;
		H=h;
		clrCOLOR=clr;
	}
	
	public void Spawn(int w,int h,BrickBreaker_Brick[] bricks){
		do{
			X=(int)Math.round(Math.random()*(w-W));
			Y=(int)Math.round(Math.random()*h)+H;
		}while(this.Contains(bricks));
	}
	public void Draw(Graphics g){
		g.setColor(clrCOLOR);
		g.draw3DRect(X, Y, W, H, true);
		g.fill3DRect(X, Y, W, H, true);
	}
	
	public boolean Contains(BrickBreaker_Brick brick){
		if(brick.X==X && brick.Y==Y)return false;
		if(brick.X+brick.W>=X && brick.X<=X+W){
			if(brick.Y+brick.H>=Y && brick.Y<=Y+H){
				return true;
			}
		}
		return false;
	}

	public boolean Contains(BrickBreaker_Brick[] brick){
		for(int i=0;i<brick.length;i++){
			if(brick[i].X==X && brick[i].Y==Y)return false;
			if(brick[i].X+brick[i].W>=X && brick[i].X<=X+W){
				if(brick[i].Y+brick[i].H>=Y && brick[i].Y<=Y+H){
					return true;
				}
			}
		}
		return false;
		
	}
	
	public void Destroy(){
		X=-999;
		Y=-999;
		blnDESTROYED=true;
	}
	
	
	
}

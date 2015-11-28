import java.awt.*;

public class GameCharacter{
	protected int X, Y;
	protected double W, H;
	protected double GX = 1, GY = 1;
	protected int MSPEED = 1;
	protected boolean CANMOVE = true;

	public GameCharacter(int X_, int Y_, double W_, double H_){
		X = X_; Y = Y_;
		W = W_; H = H_; 
	}

	public GameCharacter(int X_, int Y_, double W_, double H_, double GX_, 
		double GY_){
		
		X = X_; Y = Y_;
		W = W_; H = H_; 
		GX = GX_; GY = GY_;
	}

	public void moveX(int dir){
		X += MSPEED * dir;
	}

	public void moveY(int dir){
		Y += MSPEED * dir;
	}

	public void mDraw(Graphics g, int dx , int dy, double scale, Color col){
		g.setColor(col);
		g.fillOval((int)(X * scale + dx), (int)(Y * scale + dy), 
			(int)(W * GX * scale), (int)(H * GY * scale));
		g.setColor(col.darker());
		g.drawOval((int)(X * scale + dx), (int)(Y * scale + dy), 
			(int)(W * GX * scale), (int)(H * GY * scale));

	}



	//GETTER FUNCTIONS
	public int getXPos(){return X;}
	public int getYPos(){return Y;}
	public double getXGrowth(){return GX;}
	public double getYGrowth(){return GY;}
	public double getWidth(){return W;}
	public double getHeight(){return H;}

	//SETTER FUNCTIONS
	public void setPos(int x_, int y_){
		X = x_;
		Y= y_;
	}
	public void resize(double x_, double y_){
		GX = x_;
		GY = y_;
	}
	public void setWidth(double width){W = width;}
	public void setHeight(double height){H = height;}
	public void setSpeed(int speed){MSPEED = speed;}

}
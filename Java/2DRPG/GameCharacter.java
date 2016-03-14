import java.awt.*;
import javax.swing.JFrame;
/** Superclass which defines basic characterisitics and functions any GameCharacter can do
* @author Shobhit
* @version 2.0
*/
public class GameCharacter{
	//Character Position
	protected int X, Y;
	//Character size
	protected double W, H;
	//Used to grow character size depending on a scale factor
	protected double GX = 1, GY = 1;
	//Character movement speed
	protected int MSPEED = 1;
	//Enable//Disable a characters independant movement
	protected boolean CANMOVE = true;
	//A reference to the main class
	protected clsMain RUNNER_REF;

	/** Constructor used to initialize the main character
	* @param X_ X position on map
	* @param Y_ Y position on map
	*/ 
	public GameCharacter(int X_, int Y_, double W_, double H_, clsMain Ref){
		X = X_; Y = Y_;
		W = W_; H = H_; 
		RUNNER_REF = Ref;
	}

	public GameCharacter(int X_, int Y_, double W_, double H_, double GX_, 
		double GY_, clsMain Ref){
		
		X = X_; Y = Y_;
		W = W_; H = H_; 
		GX = GX_; GY = GY_;
		RUNNER_REF = Ref;
	}

	public void moveX(int dir){
		X += MSPEED * dir;
	}

	public void moveY(int dir){
		Y += MSPEED * dir;
	}

	public void mDraw(Graphics g, double scale, Color col){
		int dx = RUNNER_REF.MAP.DX, dy = RUNNER_REF.MAP.DY;
		g.setColor(col);
		g.fillOval((int)(X * scale + dx), (int)(Y * scale + dy), 
			(int)(W * GX * scale), (int)(H * GY * scale));
		g.setColor(col.darker());
		g.drawOval((int)(X * scale + dx), (int)(Y * scale + dy), 
			(int)(W * GX * scale), (int)(H * GY * scale));

	}

	public boolean mapCollision(int xOff, int yOff){
		int currX =RUNNER_REF.MAP.getXBlockNum(X),
			currY =RUNNER_REF.MAP.getYBlockNum(Y);

		if(xOff < 0){
			int left = RUNNER_REF.MAP.getXBlockNum(X  + xOff);
			return (RUNNER_REF.MAP.getFill(currY, left) != 0);
		}
		else if(xOff > 0){
			int right = RUNNER_REF.MAP.getXBlockNum(X + (int)W + xOff);
			return (RUNNER_REF.MAP.getFill(currY, right) != 0);
		}
		if(yOff < 0){
			int top = RUNNER_REF.MAP.getYBlockNum(Y + yOff);
			return (RUNNER_REF.MAP.getFill(top, currX) != 0);
		}
		else if(yOff > 0){
			int bot = RUNNER_REF.MAP.getYBlockNum(Y + (int)H + yOff);
			return (RUNNER_REF.MAP.getFill(bot, currX) != 0);
		}

		return false;

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
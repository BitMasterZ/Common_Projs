import java.awt.*;
import java.awt.geom.*;
/**
* @author Shobhit
* @version 1.0
*/
public class GameCharacter{
	// Character Position
	protected double X, Y;
	// The Angle the character is facing
	protected double ANGLE = 0;
	// Movement and rotation speeds
	protected double MSPEED = 1, RSPEED = Math.PI / 120;
	// Raycasting vars
	protected double HEIGHT = 32, FOV = 60;

	/**
	* Initialize the gamecharacter
	* @param x_ X Position
	* @param y_ Y Position
	*/
	public GameCharacter (double x_ , double y_){
		//Assign Position
		X = x_;
		Y = y_;
	}

	/**
	* Move the Character in the/opposite of the direction they are facing 
	* @param Dir Which direction to move in (Forward = 1, Backward = -1)
	*/
	public void Move (int Dir){
		X += MSPEED * Math.cos(ANGLE) * Dir;
		Y += MSPEED * Math.sin(ANGLE) * Dir;
	}

	/**
	* Turn the characterclockwise or anti-clockwise 
	* @param Dir Which direction to turn (Right/Clock = 1, Left/Anti-Clock = -1)
	*/
	public void Turn (int Dir){
		ANGLE += RSPEED * Dir;
	}

	/**
	* Draw Character on the minimap 
	* @param g Graphics of the component to be drawn in
	*/
	public void MDraw(Graphics g, Color col, int Dx, int Dy, double Scale){
		//Cast to Graphics2D
		Graphics2D G2 = (Graphics2D) g;

		//Define Geometric objects
		Ellipse2D.Double GChar = new Ellipse2D.Double(X * Scale + Dx , 
		    Y * Scale + Dy, 10 * Scale, 10 * Scale);		
		Line2D.Double Dir = new Line2D.Double(
		    ((X + 5) * Scale + Dx) + 5 * Scale * Math.cos(ANGLE), 
			((Y + 5) * Scale + Dy) + 5 * Scale * Math.sin(ANGLE), 
			((X + 5) * Scale + Dx) + 20 * Scale * Math.cos(ANGLE), 
			((Y + 5) * Scale + Dy) + 20 * Scale * Math.sin(ANGLE));

		//Draw Player dot
		G2.setColor(col);
		G2.fill(GChar);
		G2.setColor(col.darker().darker());
		G2.draw(GChar);
		
		//Draw directional arrow
		G2.draw(Dir);
	}

	public double getAngle(){return ANGLE;}
	public double XHead(double Factor){
		return X + Factor * Math.cos(ANGLE);
	}

	public double XHead(double Factor, double Ang){
		return X + Factor * Math.cos(Ang);
	}

	public double YHead(double Factor){
		return Y + Factor * Math.sin(ANGLE);
	}

	public double YHead(double Factor, double Ang){
		return Y + Factor * Math.sin(Ang);
	}

}

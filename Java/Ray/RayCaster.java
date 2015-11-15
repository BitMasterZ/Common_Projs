import java.awt.*;

public class RayCaster{
	private final int SCREEN_WIDTH = 320/*320*/,SCREEN_HEIGHT = 600;//200;
	private Player P1;
	private GridMap MAP;
	private double ANGLE;
	private Color FILLS[] = {Color.WHITE, Color.ORANGE, Color.RED};

	public RayCaster(Player p, GridMap m){
		P1 = p;
		MAP = m;
	}

	public double Ray(double Angle){
		double Dist = 0;
		while (!P1.MapCollision(Dist,Angle)){
			Dist += 0.25;
		}
		//Cast a ray
		//Trace it until it hits a wall
		//Record the distance to the wall
		return Dist;
	}
	public void Draw(Graphics g){
		//g.setColor(Color.BLACK);
		g.fill3DRect(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, false);

		ANGLE = Math.toDegrees(P1.getAngle()) - P1.FOV / 2;
		double RCounter = P1.FOV / (SCREEN_WIDTH);
		//For each column of the width
		for(int i = 0; i < SCREEN_WIDTH; i++){
			//Cast a ray
			double Dist = Ray(Math.toRadians(ANGLE));	
			Dist = Dist * Math.cos(Math.abs(Math.toRadians(ANGLE)- P1.getAngle()));
			//Draw col
			int Height = (int)(64 / Dist * 277);
			if(P1.YBlockNum(Dist) != -1 && P1.XBlockNum(Dist) !=-1){
				if(MAP.getFill(P1.YBlockNum(Dist),P1.XBlockNum(Dist)) != 0){
					g.setColor(FILLS[MAP.getFill(P1.YBlockNum(Dist),P1.XBlockNum(Dist))]);

				}
				g.draw3DRect(i, SCREEN_HEIGHT / 2 - Height / 2, 1, Height, true); 
			}		
			
			//Increment Angle
			ANGLE += RCounter;
		}
	}
}

public class Formulas {

	public void addVectors(Vectors A, Vectors B, Vectors Sigma){
		
		Sigma.setX(A.getX()+B.getX());
		Sigma.setY(A.getY()+B.getY());
		
	}
	
	public String showVector(Vectors A){
		double Sum=Math.floor(Math.sqrt( Math.pow(A.getX(), 2)+Math.pow(A.getY(), 2) ));
		double Angle=(A.getX()!=0)?(Math.floor(Math.atan(A.getY()/A.getX()))):0;
		String Dx=(A.getX()!=0)?((A.getX()>0)?"Right":"Left"):"";
		String Dy=(A.getY()!=0)?((A.getY()>0)?"Down":"Up"):"";
		
		return new String(Sum +"[ "+Dx+" "+Angle+"o "+Dy+"]");
	}
	
	public boolean Collision(Block A, Block B){
		boolean coll=false;
		int Dx=(int)Math.pow(B.CMass.getX()-A.CMass.getX(),2);
		int Dy=(int)Math.pow(B.CMass.getY()-A.CMass.getY(),2);
		
		int Distance =(int)Math.sqrt(Dx+Dy);
		
		int Max= (int)(1.80*Math.sqrt(Math.pow(A.h/2,2)+Math.pow(A.w/2,2)));
		
		if(Distance<Max){
			coll=true;
		}
		
		
		
		return coll;
		
	}
	
	public void ECollision(Block A, Block B){
		
		double V1X=((A.mass-B.mass)/(A.mass+B.mass))*A.Velocity.getX()+((2*B.mass)/(A.mass+B.mass))*B.Velocity.getX();
		double V1Y=((A.mass-B.mass)/(A.mass+B.mass))*A.Velocity.getY()+((2*B.mass)/(A.mass+B.mass))*B.Velocity.getY();
		
		double V2X=((B.mass-A.mass)/(A.mass+B.mass))*B.Velocity.getX()+((2*A.mass)/(A.mass+B.mass))*A.Velocity.getX();
		double V2Y=((B.mass-A.mass)/(A.mass+B.mass))*B.Velocity.getY()+((2*A.mass)/(A.mass+B.mass))*A.Velocity.getY();
		


		A.Velocity.setX((int)(V1X));
		A.Velocity.setY((int)(V1Y));
		
		B.Velocity.setX((int)(V2X));
		B.Velocity.setY((int)(V2Y));
		
		
		
	}
	
	public void CICollision(Block A, Block B){
		
		double VX=(A.mass*A.Velocity.getX()+B.mass*B.Velocity.getX())/(A.mass+B.mass);
		double VY=(A.mass*A.Velocity.getY()+B.mass*B.Velocity.getY())/(A.mass+B.mass);
		


		A.Velocity.setX((int)(VX));
		A.Velocity.setY((int)(VY));
		
		B.Velocity.setX((int)(VX));
		B.Velocity.setY((int)(VY));
		
		
		
	}
	
}

import java.awt.*;


public class Block {
		public int x=0,y=0,w=0,h=0;
		public double mass=0;
		public Vectors Velocity= new Vectors(0,0);
		public Vectors CMass= new Vectors(0,0);
		Color C=Color.BLACK;
		
		
		public Block(int Sx,int Sy,int Sw,int Sh,double M,Color c){
			h=Sh;w=Sw;
			x=Sx;y=Sy;
			mass=M;
			C=c;
			
			
			
		}
		
		public void draw(Graphics g){
			
			
			g.setColor(C);
			g.draw3DRect(x, y, w, h, true);
			g.fill3DRect(x, y, w, h, true);
			g.setColor(Color.orange);
			g.drawLine(x+w/2, y+h/2, x+w/2+Velocity.getX(), y+h/2+Velocity.getY());
			g.fillOval(x+w/2+Velocity.getX()-2, y+h/2+Velocity.getY()-2, 4, 4);
			g.setColor(C);
			CMass.setX(x+w/2);CMass.setY(y+h/2);
			
		}
		
		
}

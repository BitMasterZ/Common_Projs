import java.awt.*;
import javax.swing.JPanel;

public class GameCharacter{
	int X, Y;
	int SIZE = 50;
	Color COLOR;
	JPanel GAME_REF;

	public GameCharacter(int x, int y, Color col, JPanel ref){
		X = x;
		Y = y;
		COLOR = col;
		GAME_REF = ref;
	}

	public void draw(Graphics g){
    	g.setColor(COLOR);
    	g.fillRect(X, Y, SIZE, SIZE);
    	g.setColor(COLOR.darker());
    	g.drawRect(X, Y, SIZE, SIZE);
	}

	// public void keyPressed(KeyEvent event){}
	// public void keyTyped(KeyEvent event){}
	// public void keyReleased(KeyEvent event){}

}

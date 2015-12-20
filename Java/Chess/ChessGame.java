import java.awt.*;
import javax.swing.*;
import java.awt.event.*;

public class ChessGame implements ActionListener{
	Timer tmrANIM = new Timer(1, this);
	JPanel pnlREF;
	int GRID[][] = new int[8][8];
	int SQUARE_SIZE = 60;

	public ChessGame(JPanel pnl){
		pnlREF = pnl;
		tmrANIM.start();
	}

	public void drawBoard(Graphics g, int xOff, int yOff){
		boolean blnAlt = false;
		Color blockCol =Color.black;

		for(int i = 0;i < GRID.length; i++){
			for(int j = 0;j < GRID[i].length; j++){
				blockCol = (blnAlt) ? Color.black : Color.white;
				blnAlt = !blnAlt;

				g.setColor(blockCol);
				g.fill3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff,
					SQUARE_SIZE, SQUARE_SIZE, true);
				g.draw3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff, 
					SQUARE_SIZE, SQUARE_SIZE, true);

				try{

				}catch(Exception e){}

			}
			blnAlt = !blnAlt;
		}
	}


	public void actionPerformed(ActionEvent event){
		update(pnlREF.getGraphics());
	}

	/** 
	* Draw things on the screen using double buffering
	* @param g
	*/
	public void update(Graphics g){
		//Double buffering
		Image dbImage = pnlREF.createImage(pnlREF.getWidth(), pnlREF.getHeight());
		Graphics dbg = dbImage.getGraphics();
		
		//What to draw
		//dbg.drawString("Linux draws just fine", 200, 200);	
		drawBoard(dbg, 10, 10);


		//Double buffering
		g.drawImage(dbImage, 0, 0, pnlREF);
		
	}


}
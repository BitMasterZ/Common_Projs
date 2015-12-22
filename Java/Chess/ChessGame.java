import java.awt.*;
import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.event.*;
import java.net.*;
import java.util.HashMap;

public class ChessGame implements MouseListener{
	//Timer tmrANIM = new Timer(1, this);
	JPanel pnlREF;
	int GRID[][] = new int[8][8];
	int SQUARE_SIZE = 60;
	HashMap <String, Image> imgs = new HashMap <String, Image>();

	public ChessGame(JPanel pnl){
		pnlREF = pnl;
		resetBoard();
		try{
			imgs.put("WP", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/0/04/Chess_plt60.png")));
			imgs.put("BP", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/c/cd/Chess_pdt60.png")));
			imgs.put("WR", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/5/5c/Chess_rlt60.png")));
			imgs.put("BR", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/a/a0/Chess_rdt60.png")));
			imgs.put("WN", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/2/28/Chess_nlt60.png")));
			imgs.put("BN", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/f/f1/Chess_ndt60.png")));
			imgs.put("WB", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/9/9b/Chess_blt60.png")));
			imgs.put("BB", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/8/81/Chess_bdt60.png")));
			imgs.put("WQ", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/4/49/Chess_qlt60.png")));
			imgs.put("BQ", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/a/af/Chess_qdt60.png")));
			imgs.put("WK", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/3/3b/Chess_klt60.png")));
			imgs.put("BK", ImageIO.read(new URL("https://upload.wikimedia.org/wikipedia/commons/e/e3/Chess_kdt60.png")));

		}catch(Exception e){}

		update(pnlREF.getGraphics());
		//tmrANIM.start();


	}

	public void resetBoard(){
		GRID = new int[][]{
			{110, 120, 130, 141, 151, 131, 121, 111},
			{101, 102, 103, 104, 105, 106, 107, 108},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{1, 2, 3, 4, 5, 6, 7, 8},
			{10, 20, 30, 41, 51, 31, 21, 11}
		};
	}

	public Image getImage(char col, char type){
		String piece = col + "" + type ;

		try{	
			//URL ur = URLs.get(piece);
			//System.out.println(ur);		
			return imgs.get(piece);
		}catch(Exception e){
			System.out.println("Couldnt load image");
		}
		return null;
	}
	public char getColor(int ID){
		return (ID >= 100) ? 'B' : 'W';
	}

	public char getType(int ID){
		if(ID >= 100){ID -= 100;}
		switch(ID / 10){
			case 0:
				return 'P';

			case 1:
				return 'R';

			case 2:
				return 'N';
			
			case 3:
				return 'B';
			
			case 4:
				return 'Q';
			
			case 5:
				return 'K';									
		}

		return '-';
	}

	public void drawBoard(Graphics g, int xOff, int yOff){
		boolean blnAlt = false;
		Color blockCol =Color.black;

		for(int i = 0;i < GRID.length; i++){
			for(int j = 0;j < GRID[i].length; j++){
				blockCol = (blnAlt) ? Color.gray.darker() : Color.white;
				blnAlt = !blnAlt;

				g.setColor(blockCol);
				g.fill3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff,
					SQUARE_SIZE, SQUARE_SIZE, true);
				g.draw3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff, 
					SQUARE_SIZE, SQUARE_SIZE, true);

				if(GRID[i][j] != 0){
					try{
						g.drawImage(getImage(getColor(GRID[i][j]), getType(GRID[i][j])), j * SQUARE_SIZE + xOff, 
							i * SQUARE_SIZE + yOff, SQUARE_SIZE, SQUARE_SIZE, null);
					}catch(Exception e){
						System.out.println("Couldnt draw image");
					}
					//g.setColor(Color.red);
					//g.drawString(getColor(GRID[i][j]) + "" + getType(GRID[i][j]), 
					//	j * SQUARE_SIZE + SQUARE_SIZE / 2 + xOff,
					//	i * SQUARE_SIZE + SQUARE_SIZE / 2 + yOff);
				}

			}
			blnAlt = !blnAlt;
		}
	}



	public void mousePressed(MouseEvent event){
		update(pnlREF.getGraphics());
		int x = (event.getX() - 10) / SQUARE_SIZE, y = (event.getY() - 10) / SQUARE_SIZE;
		if(x < 0 || x > 7){x = -1;}
		if(y < 0 || y > 7){y = -1;}
		//System.out.println(x + ", " + y);
		if(x == -1 || y == -1){return;}
		
	}

	public void mouseReleased(MouseEvent event){
		
	}

	public void mouseClicked(MouseEvent event){
		
	}

	public void mouseEntered(MouseEvent event){
		
	}

	public void mouseExited(MouseEvent event){
		
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
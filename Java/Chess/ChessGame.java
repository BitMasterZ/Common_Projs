import java.awt.*;
import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.event.*;
import java.net.*;
import java.util.HashMap;
/** 
* The main class is used to enclose the entire chess game into one class
* @author Shobhit
* @version 1.0
*/
public class ChessGame implements MouseListener{
	//GUI Variables
	//Timer tmrANIM = new Timer(1, this);
	JPanel pnlREF;

	//Chess variables
		//Grid contains information about chesspieces
	int[][] GRID = new int[8][8];
		//Can move contatins position that the selected piece can go to
	int[][] CANMOVE = new int[8][8];
		//Square size is used when drawing the board on screen
	int SQUARE_SIZE = 60;
		// Find which piece is selected using coordinates for the location
	int SELECTED[] = new int[2];
		//A set of chess rules used to decide where a selected piece can move
	ChessRules RULE_SET;
		//Used to translate chesspiece name to image urls
	HashMap <String, Image> imgs = new HashMap <String, Image>();
		//Check variables
	boolean WHITE_CHECK = false, BLACK_CHECK = false;
	

	/** 
	* Constructor used to create an instance of a chess game
	* @param pnl Reference to the JPanel used in clsGame
	*/
	public ChessGame(JPanel pnl){
		//Assign reference
		pnlREF = pnl;

		//Inititalize game conditions
		resetCanMove();
		resetBoard();

		//Assign image urls for every piece
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

		//No piece is selected intially
		SELECTED[0] = -1;
		SELECTED[1] = -1;

		//Initialize rule set
		RULE_SET = new ChessRules(this);
		
		//Redraw chess board
		update(pnlREF.getGraphics());
	}

	/** 
	* Function used to reset the canmove array when a new piece is selected
	*/
	public void resetCanMove(){
		CANMOVE = new int[][]{
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0}
		};
	}

	/** 
	* Function used to reset the board to its original state
	*/
	public void resetBoard(){
		GRID = new int[][]{
			{110, 120, 130, 140, 150, 131, 121, 111},
			{101, 102, 103, 104, 105, 106, 107, 108},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0},
			{1, 2, 3, 4, 5, 6, 7, 8},
			{10, 20, 30, 40, 50, 31, 21, 11}
		};
	}

	/** 
	* Function used to get the image of the chesspiece
	* @param col Color of the piece
	* @param type ChessPiece tpye (King, queen,pawn, etc)
	* @return Chess piece image
	*/
	public Image getImage(char col, char type){
		String piece = col + "" + type ;
		return imgs.get(piece);
	}

	/** 
	* Get the color of a piece using its grid id
	* @param ID ID on grid
	* @return Color char 'W' or  'B'
	*/
	public char getColor(int ID){
		if(ID == 0){return '-';}
		return (ID >= 100) ? 'B' : 'W';
	}

	/** 
	* Get the type of a piece using its grid id
	* @param ID ID on grid
	* @return Type of the chess piece (P, R, K, etc.)
	*/
	public char getType(int ID){
		//Remove color hash
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

	/**
	* Fucntion used to draw chessboard on the screen
	* @param g Graphics component where to draw the board
	* @param xOff Offset space from left of the panel
	* @param yOff Offset space from top of the panel
	*/
	public void drawBoard(Graphics g, int xOff, int yOff){
		//Used to change square color
		boolean blnAlt = false;
		//The color of the square
		Color blockCol = Color.black;

		for(int i = 0;i < GRID.length; i++){
			for(int j = 0;j < GRID[i].length; j++){
			//Pick color of square
				//Alternate color of square
				blockCol = (blnAlt) ? Color.gray.darker() : Color.white;
				//If piece is selected
				blockCol = (SELECTED[0] == j && SELECTED[1] == i) ? Color.yellow : blockCol;
				//If a piece can move to that certain block
				blockCol = (CANMOVE[i][j] == 1) ? ((GRID[i][j] == 0) ? Color.cyan : Color.red): blockCol;
				//blockCol = (BLACK_CHECK && getType(GRID[i][j]) == 'K' && getColor(GRID[i][j]) == 'B') ? Color.magenta : blockCol;
				//Alternate
				blnAlt = !blnAlt;

			//Draw the square
				g.setColor(blockCol);
				g.fill3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff,
					SQUARE_SIZE, SQUARE_SIZE, true);
				g.draw3DRect(j * SQUARE_SIZE + xOff, i * SQUARE_SIZE + yOff, 
					SQUARE_SIZE, SQUARE_SIZE, true);

			//Draw chesspiece on square
				if(GRID[i][j] != 0){
					try{
						g.drawImage(getImage(getColor(GRID[i][j]), getType(GRID[i][j])), j * SQUARE_SIZE + xOff, 
							i * SQUARE_SIZE + yOff, SQUARE_SIZE, SQUARE_SIZE, null);
					}catch(Exception e){
						System.out.println("Couldnt draw image");
					}
				}

			}
			//Alternate
			blnAlt = !blnAlt;
		}
	}

	/** 
	* Simulate a 'move' in a chess game
	* @param x Current x position
	* @param y Current y position
	* @param dx X Position we wish to move to
	* @param dy Y Position we wish to move to
	*/
	public void pieceMove(int x, int y, int dx, int dy){
		//System.out.println(x + ", " + y);
		//Move piece
		GRID[dy][dx] = GRID[y][x];
		GRID[y][x] = 0;		
		
		//Reset movement vars
		resetCanMove();
		SELECTED[0] = -1;
		SELECTED[1] = -1;

		//Check for check
		BLACK_CHECK = RULE_SET.isChecked('B');
		if(BLACK_CHECK){System.out.println("Black checked");}
		WHITE_CHECK = RULE_SET.isChecked('W');
		
		//Redraw board
		update(pnlREF.getGraphics());
	}

	/** 
	* Mouse click event manager
	* @param event Mouse event
	*/
	public void mousePressed(MouseEvent event){
		//Redraw board and pieces
		update(pnlREF.getGraphics());

		//Parse x and y coordinate of click
		int x = (event.getX() - 10) / SQUARE_SIZE, y = (event.getY() - 10) / SQUARE_SIZE;
		//If not within board assign -1
		if(x < 0 || x > 7){x = -1;}
		if(y < 0 || y > 7){y = -1;}

		//If invalid x or y block number
		if(x == -1 || y == -1){
			//Unselect and exit
			SELECTED[0] = -1;
			SELECTED[1] = -1;
			return;
		}
		
		//Check can move
		if(CANMOVE[y][x] == 1){// BLUE MOVABLE SQUARE
			//Simulate chess move
			pieceMove(SELECTED[0], SELECTED[1], x, y);
			//Reset can move array
			resetCanMove();
			//Exit
			return;
		}else{// UNMOVABLE SQUARE
			//Select square
			SELECTED[0] = x;
			SELECTED[1] = y;
			//Reset can move array
			resetCanMove();	
		}
		
		//System.out.println(x + ", " + y);
		
		//Calculate moves		
		if(GRID[y][x] == 0){// NO CHESS PIECE SELECTED
			//Unselect
			SELECTED[0] = -1;
			SELECTED[1] = -1;
			//Reset can move array
			resetCanMove();
		}else{// CHESS PIECE SELECTED
			//Calcuate moves
			System.out.println(RULE_SET.calcMoves(x, y));	
		}

		//ReDraw Board
		update(pnlREF.getGraphics());
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
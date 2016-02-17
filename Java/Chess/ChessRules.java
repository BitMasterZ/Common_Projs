import java.util.Vector;
/** 
* Used to calculate the possible moves for chess pieces and see if a king is checked
* @author Shobhit
* @version 1.0
*/
public class ChessRules{
	//Reference to ChessGame
	ChessGame cgREF;

	//Color and type of the currently selected chesspieces
	char COLOR, TYPE;

	/**
	* Constructor for Chess Rules
	* @param cg Reference to Chess Game
	*/
	public ChessRules(ChessGame cg){
		//Assign reference
		cgREF = cg;
	}

	/**
	* Calculate moves for selected chess piece
	* @param i X Block number
	* @param j Y Block number
	* @return true if a king is checked
	*/
	public boolean calcMoves(int i, int j){
		//System.out.println(cgREF.GRID[j][i]);
		
		//Get piece type and color
		TYPE = cgREF.getType(cgREF.GRID[j][i]);
		COLOR = cgREF.getColor(cgREF.GRID[j][i]);
		
		//Check checking variable
		boolean check = false;

		//Calculate moves based on chess piece type
		switch(TYPE){
			case 'P':// PAWN
				check = PawnRules(i, j, false);
				break;

			case 'N':// KNIGHT
				check = KnightRules(i, j, false);
				break;

			case 'B':// BISHOP
				check = DiagonalRules(i, j, 0, false);
				break;

			case 'R':// ROOK
				check =LineRules(i, j, 0, false);
				break;

			case 'Q':// QUEEN
				check = LineRules(i, j, 0, false);
				check = check || DiagonalRules(i, j, 0, false);
				break;

			case 'K':// KING
				check = KingRules(i, j, false);
				break;
					
		}

		return check;
	}

	/**
	* Check if a particular square is empty
	* @param i X Block number
	* @param j Y Block number
	* @return true if the square is unoccupied
	*/
	public boolean isEmpty(int i, int j){
		//Invalid block number
		if(i < 0 || i >= 8){return false;}
		if(j < 0 || j >= 8){return false;}
		
		//Check if unoccupied
		return (cgREF.GRID[j][i] == 0);
	}

	/**
	* Check if a particular square is occupied by an enemy chesspiece
	* @param i X Block number
	* @param j Y Block number
	* @return true if the square is occupied by an enemy chesspiece
	*/
	public boolean isEnemy(int i, int j){
		//Invalid block number
		if(i < 0 || i >= 8){return false;}
		if(j < 0 || j >= 8){return false;}

		//Check if enemy
		return (cgREF.GRID[j][i] != 0 && cgREF.getColor(cgREF.GRID[j][i]) != COLOR);
	}

	/**
	* Check if a king of a certain color is checked
	* @param col Color of the king
	* @return true if the king of color col is checked
	*/
	public boolean isChecked(char col){
		return false;
	}

	/**
	* Set of rules used to calculate the possible moves for a King
	* @param i X Block number
	* @param j Y Block number
	*/
	public boolean KingRules(int i, int j, boolean check){
		
		if(isEmpty(i + 1, j) || isEnemy(i + 1, j)){ //RIGHT
			cgREF.CANMOVE[j][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j][i + 1]) == 'K'){check = true;}
		}
		if(isEmpty(i - 1, j) || isEnemy(i - 1, j)){ //LEFT
			cgREF.CANMOVE[j][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j][i - 1]) == 'K'){check = true;}
		}
		if(isEmpty(i, j + 1) || isEnemy(i, j + 1)){ //BELOW
			cgREF.CANMOVE[j + 1][i] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i]) == 'K'){check = true;}
		}
		if(isEmpty(i, j - 1) || isEnemy(i, j - 1)){ //ABOVE
			cgREF.CANMOVE[j - 1][i] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i]) == 'K'){check = true;}
		}
		if(isEmpty(i + 1, j + 1) || isEnemy(i + 1, j + 1)){ //BELOW-RIGHT
			cgREF.CANMOVE[j + 1][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i + 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i + 1, j - 1) || isEnemy(i + 1, j - 1)){ //ABOVE-RIGHT
			cgREF.CANMOVE[j - 1][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i + 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i - 1, j + 1) || isEnemy(i - 1, j + 1)){ //BELOW-LEFT
			cgREF.CANMOVE[j + 1][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i - 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i - 1, j - 1) || isEnemy(i - 1, j - 1)){ //ABOVE-LEFT
			cgREF.CANMOVE[j - 1][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i - 1]) == 'K'){check = true;}			
		}
		
		return check;
	}

	/**
	* Set of rules used to calculate the possible moves for a piece which can move in straight lines
	* @param i X Block number
	* @param j Y Block number
	* @param dir which direction to traverse
	*/
	public boolean LineRules(int i, int j, double dir, boolean check){
		
		if(dir == 0){//At the first iteration
			//Go over every direction
				//TOP
			LineRules(i, j - 1, -1, check);
				//BOTTOM
			LineRules(i, j + 1, 1, check);
				//LEFT
			LineRules(i - 1, j, -0.5, check);
				//RIGHT
			LineRules(i + 1, j, 0.5, check);
			return check;
		}else{//Not first iteration

			if(isEmpty(i, j) || isEnemy(i, j)){//If the square is unoccupied or occupied by enemy
				//Set can move to true 
				cgREF.CANMOVE[j][i] = 1;
				if(cgREF.getType(cgREF.GRID[j][i]) == 'K' && isEnemy(i, j)){check = true;}
			}
			if(isEmpty(i, j)){// If can still progress in a direction
				//Continue in the selected direction
					//TOP
				if(dir == -1){LineRules(i, j - 1, -1, check);}
					//BOTTOM
				if(dir == 1){LineRules(i, j + 1, 1, check);}
					//LEFT
				if(dir == -0.5){LineRules(i - 1, j, -0.5, check);}
					//RIGHT
				if(dir == 0.5){LineRules(i + 1, j, 0.5, check);}	
			}
		}

		return false;
		
	}
	
	/**
	* Set of rules used to calculate the possible moves for a piece which can move diagonally
	* @param i X Block number
	* @param j Y Block number
	* @param dir which direction to traverse
	*/
	public boolean DiagonalRules(int i, int j, double dir, boolean check){
		
		if(dir == 0){//At the first iteration
			//Go over every direction
				//TOP-LEFT
			DiagonalRules(i - 1, j - 1, -1, check);
				//BOT-RIGHT
			DiagonalRules(i + 1, j + 1, 1, check);
				//BOT-LEFT
			DiagonalRules(i - 1, j + 1, -0.5, check);
				//TOP-RIGHT
			DiagonalRules(i + 1, j - 1, 0.5, check);
		}else{//Not first iteration

			if(isEmpty(i, j) || isEnemy(i, j)){//If the square is unoccupied or occupied by enemy
				//Set can move to true
				cgREF.CANMOVE[j][i] = 1;
				if(cgREF.getType(cgREF.GRID[j][i]) == 'K' && isEnemy(i, j)){check = true;}
			}
			if(isEmpty(i, j)){//If can still progress in a direction
				//Continue in the selected direction
					//TOP-LEFT
				if(dir == -1){DiagonalRules(i - 1, j - 1, -1, check);}
					//BOT-RIGHT
				if(dir == 1){DiagonalRules(i + 1, j + 1, 1, check);}
					//BOT-LEFT
				if(dir == -0.5){DiagonalRules(i - 1, j + 1, -0.5, check);}
					//TOP-RIGHT
				if(dir == 0.5){DiagonalRules(i + 1, j - 1, 0.5, check);}	
			}
		}

		return check;
	}

	/**
	* Set of rules used to calculate the possible moves for a Knight
	* @param i X Block number
	* @param j Y Block number
	*/
	public boolean KnightRules(int i, int j, boolean check){
		int x = 0, y = 0;
		for(int k = 0; k < 2; k++){
			if(k == 0){x = 1; y = 2;}
			if(k == 1){x = 2; y = 1;}
			for(int l = 0; l < 4; l++){
				if(isEmpty(i + x, j + y) || isEnemy(i + x, j + y)){
					cgREF.CANMOVE[j + y][i + x] = 1;
					if(cgREF.getType(cgREF.GRID[j + y][i + x]) == 'K' && isEnemy(i + x, j + y)){check = true;}
				}
				x = -x;
				if(l % 2 == 1){y = -y;}
			}
		}
		return check;
	}

	/**
	* Set of rules used to calculate the possible moves for a Pawn
	* @param i X Block number
	* @param j Y Block number
	*/
	public boolean PawnRules(int i, int j, boolean check){
		//check = true;	
		switch(COLOR){

			case 'W'://WHITE PAWN
				//Move forward
				if(isEmpty(i, j - 1)){
					cgREF.CANMOVE[j - 1][i] = 1;
				}

				//Kill enemy on right
				if(isEnemy(i + 1,j - 1)){
					cgREF.CANMOVE[j - 1][i + 1] = 1;
					if(cgREF.getType(cgREF.GRID[j - 1][i + 1]) == 'K' && isEnemy(i + 1, j - 1)){check = true;}	
				}

				//Kill enemy on left
				if(isEnemy(i - 1,j - 1)){
					cgREF.CANMOVE[j - 1][i - 1] = 1;
					if(cgREF.getType(cgREF.GRID[j - 1][i - 1]) == 'K' && isEnemy(i - 1, j - 1)){check = true;}	
				}

				//First move can move two steps
				if(j == 6 && isEmpty(i, j - 2)){
					cgREF.CANMOVE[j - 2][i] = 1;
				}
				break;

			case 'B':
				//Move forward
				if(isEmpty(i, j + 1)){
					cgREF.CANMOVE[j + 1][i] = 1;
				}

				//Kill enemy on right
				if(isEnemy(i + 1,j + 1)){
					cgREF.CANMOVE[j + 1][i + 1] = 1;
					if(cgREF.getType(cgREF.GRID[j + 1][i + 1]) == 'K' && isEnemy(i + 1, j + 1)){check = true;}	
				}

				//Kill enemy on left
				if(isEnemy(i - 1,j + 1)){
					cgREF.CANMOVE[j + 1][i - 1] = 1;
					if(cgREF.getType(cgREF.GRID[j + 1][i - 1]) == 'K' && isEnemy(i - 1, j + 1)){check = true;}	
				}

				//First move can move two steps
				if(j == 1 && isEmpty(i, j + 2)){
					cgREF.CANMOVE[j + 2][i] = 1;
				}
				break;	
		}
		return check;
	}
}
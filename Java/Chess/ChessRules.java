import java.util.Vector;

public class ChessRules{
	ChessGame cgREF;
	char COLOR, TYPE;
	public ChessRules(ChessGame cg){
		cgREF = cg;
	}

	public boolean calcMoves(int i, int j){
		//System.out.println(cgREF.GRID[j][i]);
		TYPE = cgREF.getType(cgREF.GRID[j][i]);
		COLOR = cgREF.getColor(cgREF.GRID[j][i]);
		
		boolean check = false;

		switch(TYPE){
			case 'P':
				check = PawnRules(i, j, false);
				//System.out.println(check);
				break;
			case 'N':
				check = KnightRules(i, j, false);
				break;
			case 'B':
				check = DiagonalRules(i, j, 0, false);
				break;
			case 'R':
				check =LineRules(i, j, 0, false);
				break;
			case 'Q':
				check = LineRules(i, j, 0, false);
				check = check || DiagonalRules(i, j, 0, false);
				break;
			case 'K':
				check = KingRules(i, j, false);
				break;
					
		}

		return check;
	}


	public boolean isEmpty(int i, int j){
		if(i < 0 || i >= 8){return false;}
		if(j < 0 || j >= 8){return false;}
		return (cgREF.GRID[j][i] == 0);
	}

	public boolean isEnemy(int i, int j){
		if(i < 0 || i >= 8){return false;}
		if(j < 0 || j >= 8){return false;}
		return (cgREF.GRID[j][i] != 0 && cgREF.getColor(cgREF.GRID[j][i]) != COLOR);
	}



	public boolean isChecked(char col){
		return false;
	}

	public boolean KingRules(int i, int j, boolean check){
		

		if(isEmpty(i + 1, j) || isEnemy(i + 1, j)){
			cgREF.CANMOVE[j][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j][i + 1]) == 'K'){check = true;}
		}
		if(isEmpty(i - 1, j) || isEnemy(i - 1, j)){
			cgREF.CANMOVE[j][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j][i - 1]) == 'K'){check = true;}
		}
		if(isEmpty(i, j + 1) || isEnemy(i, j + 1)){
			cgREF.CANMOVE[j + 1][i] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i]) == 'K'){check = true;}
		}
		if(isEmpty(i, j - 1) || isEnemy(i, j - 1)){
			cgREF.CANMOVE[j - 1][i] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i]) == 'K'){check = true;}
		}
		if(isEmpty(i + 1, j + 1) || isEnemy(i + 1, j + 1)){
			cgREF.CANMOVE[j + 1][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i + 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i + 1, j - 1) || isEnemy(i + 1, j - 1)){
			cgREF.CANMOVE[j - 1][i + 1] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i + 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i - 1, j + 1) || isEnemy(i - 1, j + 1)){
			cgREF.CANMOVE[j + 1][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j + 1][i - 1]) == 'K'){check = true;}			
		}
		if(isEmpty(i - 1, j - 1) || isEnemy(i - 1, j - 1)){
			cgREF.CANMOVE[j - 1][i - 1] = 1;
			if(cgREF.getType(cgREF.GRID[j - 1][i - 1]) == 'K'){check = true;}			
		}
		
		return check;
	}
	public boolean LineRules(int i, int j, double dir, boolean check){
		if(dir == 0){
			LineRules(i, j - 1, -1, check);
			LineRules(i, j + 1, 1, check);
			LineRules(i - 1, j, -0.5, check);
			LineRules(i + 1, j, 0.5, check);
			return check;
		}else{
			if(isEmpty(i, j) || isEnemy(i, j)){
				cgREF.CANMOVE[j][i] = 1;
				if(cgREF.getType(cgREF.GRID[j][i]) == 'K' && isEnemy(i, j)){check = true;}
			}
			if(isEmpty(i, j)){
				if(dir == -1){LineRules(i, j - 1, -1, check);}
				if(dir == 1){LineRules(i, j + 1, 1, check);}
				if(dir == -0.5){LineRules(i - 1, j, -0.5, check);}
				if(dir == 0.5){LineRules(i + 1, j, 0.5, check);}	
			}
		}

		return false;
		
	}
	
	public boolean DiagonalRules(int i, int j, double dir, boolean check){
		if(dir == 0){
			DiagonalRules(i - 1, j - 1, -1, check);
			DiagonalRules(i + 1, j + 1, 1, check);
			DiagonalRules(i - 1, j + 1, -0.5, check);
			DiagonalRules(i + 1, j - 1, 0.5, check);
		}else{
			if(isEmpty(i, j) || isEnemy(i, j)){
				cgREF.CANMOVE[j][i] = 1;
				if(cgREF.getType(cgREF.GRID[j][i]) == 'K' && isEnemy(i, j)){check = true;}
			}
			if(isEmpty(i, j)){
				if(dir == -1){DiagonalRules(i - 1, j - 1, -1, check);}
				if(dir == 1){DiagonalRules(i + 1, j + 1, 1, check);}
				if(dir == -0.5){DiagonalRules(i - 1, j + 1, -0.5, check);}
				if(dir == 0.5){DiagonalRules(i + 1, j - 1, 0.5, check);}	
			}
		}

		return check;
	}

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

	public boolean PawnRules(int i, int j, boolean check){
		//check = true;	
		switch(COLOR){
			case 'W':
				if(isEmpty(i, j - 1)){
					cgREF.CANMOVE[j - 1][i] = 1;
				}
				if(isEnemy(i + 1,j - 1)){
					cgREF.CANMOVE[j - 1][i + 1] = 1;
					if(cgREF.getType(cgREF.GRID[j - 1][i + 1]) == 'K' && isEnemy(i + 1, j - 1)){check = true;}	
				}
				if(isEnemy(i - 1,j - 1)){
					cgREF.CANMOVE[j - 1][i - 1] = 1;
					if(cgREF.getType(cgREF.GRID[j - 1][i - 1]) == 'K' && isEnemy(i - 1, j - 1)){check = true;}	
				}
				if(j == 6 && isEmpty(i, j - 2)){
					cgREF.CANMOVE[j - 2][i] = 1;
				}
				break;
			case 'B':
				if(isEmpty(i, j + 1)){
					cgREF.CANMOVE[j + 1][i] = 1;
				}
				if(isEnemy(i + 1,j + 1)){
					cgREF.CANMOVE[j + 1][i + 1] = 1;
					if(cgREF.getType(cgREF.GRID[j + 1][i + 1]) == 'K' && isEnemy(i + 1, j + 1)){check = true;}	
				}
				if(isEnemy(i - 1,j + 1)){
					cgREF.CANMOVE[j + 1][i - 1] = 1;
					if(cgREF.getType(cgREF.GRID[j + 1][i - 1]) == 'K' && isEnemy(i - 1, j + 1)){check = true;}	
				}
				if(j == 1 && isEmpty(i, j + 2)){
					cgREF.CANMOVE[j + 2][i] = 1;
				}
				break;	
		}
		return check;
	}
}
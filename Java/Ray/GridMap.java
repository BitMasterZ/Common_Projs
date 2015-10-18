import java.awt.*;

public class GridMap{
	int GRID[][];
	int XBLOCKS, YBLOCKS;
	int BSIZE = 50;

	public GridMap(int X_, int Y_, int Size_){
		XBLOCKS = X_;
		YBLOCKS = Y_;
		BSIZE = Size_;
		GRID = new int[YBLOCKS][XBLOCKS];

		for(int i = 0; i < GRID.length; i++){
			for(int j = 0; j < GRID[i].length; j++){
				GRID[i][j] = 0; 
			}
		}

	}

	public void MDraw(Graphics g){
		for(int i = 0; i < GRID.length; i++){
			for(int j = 0; j < GRID[i].length; j++){
				g.draw3DRect(j * BSIZE, i * BSIZE, BSIZE, BSIZE, true); 
			}
		}		
	}
}
import java.awt.*;

/**
*@author Shobhit
*@version 3.0
*/
public class GridMap{
	// 2D Array that stores the fill of each blocks
	private int GRID[][];
	// Number of X and Y Blocks in the Map
	private int XBLOCKS, YBLOCKS;
	// The size of each block
	private int BSIZE = 50;

	/**
	* Initialize the GridMap using the number of blocks and block size
	* @param X_ Number of X Blocks
	* @param Y_ Number of Y Blocks
	* @param Size_ Block size
	*/
	public GridMap(int X_, int Y_, int Size_){
		//Intialize Vars
		XBLOCKS = X_;
		YBLOCKS = Y_;
		BSIZE = Size_;
		GRID = new int[YBLOCKS][XBLOCKS];

		//Set the Grid fills to 0 [intially]
		for(int i = 0; i < GRID.length; i++){
			for(int j = 0; j < GRID[i].length; j++){
				GRID[i][j] = 0; 
			}
		}
	}

	/**
	* Draw a minimap to the screen
	* @param g Graphics of the component to be drawn in
	*/
	public void MDraw(Graphics g){
		//For each block
		for(int i = 0; i < GRID.length; i++){
			for(int j = 0; j < GRID[i].length; j++){
				//Draw the outline of the block
				g.draw3DRect(j * BSIZE, i * BSIZE, BSIZE, BSIZE, true); 
			}
		}		
	}
}
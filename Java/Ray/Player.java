import java.awt.event.*;

/**
* @author Shobhit
* @version 1.0
*/
public class Player extends GameCharacter implements KeyListener, Runnable{
	//Reference to main class
	clsMain MAINREF;
	//Enum used to reference key names
	KeyNames KEY;
	//Key flags set/unset in KeyListener functions
	boolean KEY_FLAGS[] = {false, false, false, false};
	//Keys used by this particular player
	int KEYS[] = {KeyEvent.VK_W, KeyEvent.VK_S, KeyEvent.VK_A, KeyEvent.VK_D};
	//Thread used for player movement and actions
	Thread tdRUNNER = new Thread(this); 

	/**
	* Initialize Player(instanceof GameCharacter)
	* @param x_ X Position
	* @param y_ Y Position
	* Ref Refrence to the main class
	*/
	public Player(double x_, double y_, clsMain Ref){
		//Make an instance of GameCharacter
		super(x_, y_);
		//Assign reference of main class
		MAINREF = Ref;

		//Add the keylistener to main and start the player action thread
		MAINREF.addKeyListener(this);
		tdRUNNER.start();
	}

	public Player(double x_, double y_, clsMain Ref ,int K[]){
		//Make an instance of GameCharacter
		super(x_, y_);
		//Assign reference of main class
		MAINREF = Ref;
		
		//Reassign the player keys
		KEYS = K;
		//Resize the key flags according 
		KEY_FLAGS = new boolean[KEYS.length];
		//Initialize flags to false
		for(int i = 0;i < KEY_FLAGS.length; i++){
			KEY_FLAGS[i] = false;
		}

		//Add the keylistener to main and start the player action thread
		MAINREF.addKeyListener(this);
		tdRUNNER.start();
	}

	/**
	*	When a specified key is pressed set the corresponding flag
	*/
	public void keyPressed(KeyEvent event){
		//Key Indexs
		int Indices[] = {KEY.FWD.I, KEY.BWD.I, KEY.RIGHT.I, KEY.LEFT.I};

		//For each indexed key
		for(int i = 0; i < Indices.length; i++){
			//If the key is pressed
			if(event.getKeyCode() == KEYS[Indices[i]]){
				//Set the flag to true
				KEY_FLAGS[Indices[i]] = true;
			}
		}
	}

	/**
	*	When a specified key is released unset the corresponding flag
	*/
	public void keyReleased(KeyEvent event){
		//Key Indexs
		int Indices[] = {KEY.FWD.I, KEY.BWD.I, KEY.RIGHT.I, KEY.LEFT.I};

		//For each indexed key
		for(int i = 0; i < Indices.length; i++){
			//If the key is released
			if(event.getKeyCode() == KEYS[Indices[i]]){
				//Set the flag to false
				KEY_FLAGS[Indices[i]] = false;
			}
		}
	}

	public void keyTyped(KeyEvent event){
		/*UNUSED*/
	}

	/**
	* Thread used to execute the player actions
	*/
	public void run(){
		while(true){
			//Move forward
			if(KEY_FLAGS[KEY.FWD.I]){
				Move(1);
			}

			//Move backward
			if(KEY_FLAGS[KEY.BWD.I]){
				Move(-1);
			}

			//Turn Left
			if(KEY_FLAGS[KEY.LEFT.I]){
				Turn(-1);
			}

			//Turn Right
			if(KEY_FLAGS[KEY.RIGHT.I]){
				Turn(1);
			}

			//Delay for the thread
			try{
				Thread.sleep(10);
			}catch(Exception e){}
		}
	}

}
/**
* Enum used to reference key names
*/
enum KeyNames{
	FWD(0), BWD(1) , LEFT(2) , RIGHT(3);
	int I;
	KeyNames (int Ind){ I = Ind; }
}

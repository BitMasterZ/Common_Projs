import java.awt.*;
import java.awt.event.*;
import javax.swing.JFrame;

public class Player extends GameCharacter implements KeyListener, Runnable{
	private int[] KEYS = {KeyEvent.VK_W, KeyEvent.VK_S, KeyEvent.VK_A, 
		KeyEvent.VK_D};
	private boolean[] blnKEYFLAGS = new boolean[KEYS.length];
	private Thread thdANIM = new Thread(this);

	public Player(int X_, int Y_, double W_, double H_, clsMain runner){
		super(X_, Y_, W_, H_, runner);
		RUNNER_REF.addKeyListener(this);

		for(int i = 0; i < blnKEYFLAGS.length; i++){
			blnKEYFLAGS[i] = false;
		}
		thdANIM.start();
	}

	public Player(int X_, int Y_, double W_, double H_, double GX_, 
		double GY_, clsMain runner){
		super(X_, Y_, W_, H_, GX_, GY_, runner);

		RUNNER_REF.addKeyListener(this);		
		for(int i = 0; i < blnKEYFLAGS.length; i++){
			blnKEYFLAGS[i] = false;
		}
		thdANIM.start();
	}

	public void keyPressed(KeyEvent event){
		for(int i = 0; i < KEYS.length; i++){
			if(event.getKeyCode() == KEYS[i]){blnKEYFLAGS[i] = true;}
		}
	}

	public void keyReleased(KeyEvent event){
		for(int i = 0; i < KEYS.length; i++){
			if(event.getKeyCode() == KEYS[i]){blnKEYFLAGS[i] = false;}
		}	

	}

	public void keyTyped(KeyEvent event){

	}

	public void run(){
		while(true){
			if(!CANMOVE){continue;}

			if(blnKEYFLAGS[0]){
				if(!mapCollision(0, -MSPEED)){
					moveY(-1);
				}
			}
			else if(blnKEYFLAGS[1]){
				if(!mapCollision(0, MSPEED)){
					moveY(1);
				}
			}

			if(blnKEYFLAGS[2]){
				if(!mapCollision(-MSPEED, 0)){
					moveX(-1);
				}
			}
			else if(blnKEYFLAGS[3]){
				if(!mapCollision(MSPEED, 0)){
					moveX(1);
				}
			}

			try{
				Thread.sleep(10);
			}catch(Exception e){}
		}
	}

}
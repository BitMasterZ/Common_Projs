import java.awt.*;
import java.awt.event.*;
import javax.swing.JPanel;
import java.util.HashMap;

public class Player extends GameCharacter implements KeyListener{
  Key_Bindings CONTROLS = new Key_Bindings(
    new int[]{KeyEvent.VK_W, KeyEvent.VK_S, KeyEvent.VK_A, KeyEvent.VK_D},
    new String[]{"UP", "DOWN", "LEFT", "RIGHT"});
  Thread thdACTIONS;

  public Player(int x, int y, Color col, JPanel ref){
    super(x, y, col, ref);
    ref.addKeyListener(this);
    initThreads();
    thdACTIONS.start();
  }

  public void initThreads(){
    thdACTIONS = new Thread(new Runnable(){
      public void run(){
        while(true){
          playerMovement();
          try{Thread.sleep(1);} catch(Exception e){}
        }
      }
    });
  }

  public void playerMovement(){
    if(CONTROLS.isSet("UP")){
      Y-=1;
    }
    if(CONTROLS.isSet("DOWN")){
      Y+=1;
    }
    if(CONTROLS.isSet("LEFT")){
      X-=1;
    }
    if(CONTROLS.isSet("RIGHT")){
      X+=1;
    }
  }


  public void keyPressed(KeyEvent event){
    for(int i = 0; i < CONTROLS.KEYS.length; i++){
      if(event.getKeyCode() == CONTROLS.KEYS[i]){
        CONTROLS.FLAGS[i] = true;
      }
    }
  }
	public void keyTyped(KeyEvent event){}
	public void keyReleased(KeyEvent event){
    for(int i = 0; i < CONTROLS.KEYS.length; i++){
      if(event.getKeyCode() == CONTROLS.KEYS[i]){
        CONTROLS.FLAGS[i] = false;
      }
    }
  }

}
class Key_Bindings{
  int KEYS[];
  boolean FLAGS[];
  HashMap INDEX =  new HashMap();

  public Key_Bindings(int[] keys, String[] names){
    KEYS = keys;
    FLAGS = new boolean[keys.length];
    for(int i = 0; i < keys.length; i++){
      FLAGS[i] = false;
    }
    for(int i = 0; i < names.length; i++){
      INDEX.put(names[i], i);
    }
  }

  public boolean isSet(String key){
    return FLAGS[(int)INDEX.get(key)];
  }

}

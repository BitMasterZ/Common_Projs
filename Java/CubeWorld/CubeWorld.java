import javax.swing.*;
import java.awt.*;
import java.awt.image.*;

public class CubeWorld{

  JPanel DISPLAY_WINDOW;

  Thread thdANIM;

  public void initThreads(){
    thdANIM = new Thread(new Runnable(){
      public void run(){
        while(true){
          buffer_draw();
          try{Thread.sleep(1);} catch(Exception e){}
        }
      }
    });

  }

  public CubeWorld(JPanel window){
    DISPLAY_WINDOW = window;
    initThreads();
    thdANIM.start();
  }



	public void buffer_draw(){
		//Double buffering
		Image dbImage=DISPLAY_WINDOW.createImage(DISPLAY_WINDOW.getWidth(),
          DISPLAY_WINDOW.getHeight());
		Graphics dbg=dbImage.getGraphics();

		//What to draw
    dbg.drawRect(10,10,100,100);

		//Double buffering
		DISPLAY_WINDOW.getGraphics().drawImage(dbImage,0,0,DISPLAY_WINDOW);

  }


}

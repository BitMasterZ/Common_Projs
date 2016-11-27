import javax.swing.*;

import java.awt.*;
import java.awt.event.*;

/*<applet code="Gravity"  width="300" height="300">*/

@SuppressWarnings("serial")
public class Gravity extends JApplet implements ActionListener,MouseListener{
	Formulas set= new Formulas();
    Timer Runner= new Timer(20,this);
    Timer Refresher= new Timer(40,this);
    Timer timer= new Timer(1000,this);
    Comps Sample= new Comps();
    
   
    JMenuBar Holder= new JMenuBar();
    JMenu App= Sample.MenuMaker('A',Holder,"Application",this);
    JMenuItem Exit= Sample.MenuItemMaker('E',App,"Exit",this);
    JMenuItem Prop= Sample.MenuItemMaker('P',App,"Properties",this);
    JMenuItem Gg= Sample.MenuItemMaker('G',App,"Gravity (true)",this);
    
    JToolBar Hold= new JToolBar();
    
    JLabel lblProp= Sample.Label("Properties",Hold,this);
    JLabel lblTool= Sample.Label("<html><center>Toolbar</center></html>",Hold,this);
    JLabel lblX=Sample.Label("x:",Hold,this);
    JTextField X=Sample.TextBox(6,Hold,this);
    JLabel lblY= Sample.Label("y:",Hold,this);
    JTextField Y=  Sample.TextBox(6,Hold,this);
    JLabel lblM= Sample.Label("mass:",Hold,this);
    JTextField M=  Sample.TextBox(6,Hold,this);
    JLabel lblW= Sample.Label("w:",Hold,this);
    JTextField W=  Sample.TextBox(6,Hold,this);
    JLabel lblH= Sample.Label("h:",Hold,this);
    JTextField H=  Sample.TextBox(6,Hold,this);
    JLabel lblVx= Sample.Label("Vx:",Hold,this);
    JTextField Vx=  Sample.TextBox(6,Hold,this);
    JLabel lblVy= Sample.Label("Vy:",Hold,this);
    JTextField Vy=  Sample.TextBox(6,Hold,this);
    
    @SuppressWarnings("rawtypes")
	JComboBox Obj =Sample.List(new String[]{"----","<html><font color=\"Red\">Obj A</font></html>","<html><font color=\"Blue\">Obj B</font></html>"},Hold,this);
    Block mA= new Block(15,100,20,20,.5,Color.RED);
    Block mB= new Block(15,700,20,20,.5,Color.BLUE);
    Block[] NBlock= new Block[40];
    JButton Start=  Sample.Button("Start",Hold,this);
    JButton Reset= Sample.Button("Reset",Hold,this);
    
    JToolBar Create= new JToolBar();
    JButton CrBlock= Sample.Button("Block",Create,this);
    
    Block Chosen;
    boolean Grav=true;
    double g=9.81;
    int Time=0;
    int BlockTotal=0;

    @SuppressWarnings("unchecked")
	public void actionPerformed(ActionEvent event){
    	
        if (event.getSource()==Refresher){
        	
            repaint();
        
        }
        if (event.getSource()==timer){
        	
            Time++;
        
        }
        if (event.getSource()==Runner){
       for (int i=0;i<BlockTotal;i++){
        		Fall(NBlock[i]);
        		
        		
        	}
        	Fall(mA);
        	Fall(mB); 
        	
        	
        	
        
        }
        
        if (event.getSource()==Exit){
            System.exit(0);
        }
        if (event.getSource()==CrBlock){
        	
        	
            NBlock[BlockTotal]=new Block(15,700,40,30,.5,Color.ORANGE);
            String Col="<html><font color=\"Orange\">Obj "+BlockTotal+"</font></html>";
       
            Obj.addItem(Col);
            BlockTotal++;
        }
        if (event.getSource()==Gg){
            Grav=!Grav;
            Gg.setText("Gravity ("+Grav+")");
        }
        
        else if (event.getSource()==Prop){
            Hold.setVisible(!Hold.isVisible());
        }
        
        else if (event.getSource()==X){
        	
        	try{Chosen.x=Integer.parseInt(X.getText())-mA.w/2;}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid X");}
        
        }
        
        else if (event.getSource()==Y){
        	
        	try{Chosen.y=Integer.parseInt(Y.getText())-mA.h/2;}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid Y");}
        
        }
        
        else if (event.getSource()==M){
        	
        	try{Chosen.mass=Double.parseDouble(M.getText());}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid mass");}
        
        }
        
        else if (event.getSource()==Vx){
        	
        	try{Chosen.Velocity.setX(Integer.parseInt(Vx.getText()));}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid Vx");}
        
        }

        else if (event.getSource()==Vy){
        	
        	try{Chosen.Velocity.setY(Integer.parseInt(Vy.getText()));}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid Vy");}
        
        }

        
        else if (event.getSource()==W){
        	
        	try{Chosen.x-=(Integer.parseInt(W.getText())-Chosen.w)/2;
        	Chosen.w=Integer.parseInt(W.getText());}
        
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid width");}
        
        }
        
        else if (event.getSource()==H){
        	
        	try{Chosen.y-=(Integer.parseInt(H.getText())-Chosen.h)/2;
        	Chosen.h=Integer.parseInt(H.getText());}
        	catch(Exception e){JOptionPane.showMessageDialog(null, "Invalid height");}
        
        }
        else if (event.getSource()==Reset){
        	Reseter();
        	
        	
        }
        
        else if (event.getSource()==Obj){
        	switch(Obj.getSelectedIndex()){
        	
        		case 1:
        			Chosen=mA;
        			
        			break;
        		case 2:
        			Chosen=mB;        			
        			break;	
        		case 0:
        			        			
        			break;	
        
        		default:
        			Chosen=NBlock[Obj.getSelectedIndex()-3];        			
        			break;	
        
        	}
        	Display(Chosen);
        }
        
        else if (event.getSource()==Start){
        
            if(Runner.isRunning()){
                Runner.stop();
                timer.stop();
                Start.setText("Start");
            }
            else{
                Runner.start();
                timer.start();
                Start.setText("Stop");
            }
            
        }

    }
    
    public void paint(Graphics G){
        
       
        
        
        try{Thread.sleep(100);} catch(Exception e){}
        this.paintComponents(G);    
        G.drawString(Time+"",500,100);
        mA.draw(G);
        G.drawString(set.showVector(mA.Velocity),50,100);
        mB.draw(G);
        G.drawString(set.showVector(mB.Velocity),50,130);
    	
        for (int i=0;i<BlockTotal;i++){
    		NBlock[i].draw(G);
    		G.drawString(set.showVector(NBlock[i].Velocity),50,160+i*30);
    		if(set.Collision(mB,NBlock[i])){set.ECollision(mB,NBlock[i]);}
    		if(set.Collision(mA,NBlock[i])){set.ECollision(mA,NBlock[i]);}
    		
    		 for (int j=i;j<BlockTotal;j++){
    			 if(set.Collision(NBlock[j],NBlock[i])){set.CICollision(NBlock[j],NBlock[i]);}
    		 }
    		
    	}
        
        
        if(set.Collision(mA, mB)){set.ECollision(mA, mB);}
      
        
    }

    public void Fall(Block A){
        boolean FreeFall=(A.y+A.h<getSize().height)?true:false;
        
        
        
        
        
        for (int i=0;i<BlockTotal;i++){
        	FreeFall=FreeFall && (set.Collision(mA, A)==false);
            FreeFall=FreeFall && (set.Collision(mB, A)==false);
        	FreeFall=FreeFall && (set.Collision(A, NBlock[i])==false);
        }
        
        
        
        if (Grav){
        if(FreeFall){
        
           
            A.Velocity.setY((int)(Math.floor(A.Velocity.getY()+(g*A.mass))));     
            
        }
        else{
        	A.y=getSize().height-A.h;
        	if(A.Velocity.getY()>2){A.Velocity.setY(-A.Velocity.getY()/2);} else{
        		A.Velocity.setY(0);}
      
        }}
        

        A.y+=Math.floor(A.Velocity.getY());
        A.x+=Math.floor(A.Velocity.getX());
    
    }
    
    public void init(){
        this.setSize(300,300);
        this.setLayout(new BorderLayout());   
        Refresher.start();  
        
        this.setJMenuBar(Holder);
        Start.setMnemonic('S');
        this.add(Hold,BorderLayout.NORTH);
        this.add(Create,BorderLayout.EAST);
        Hold.setVisible(true);
        Hold.setLayout(new FlowLayout());
        mB.Velocity.setX(5);
        
    }


    

 	public void Display(Block A){
 		X.setText(A.x+"");
 		Y.setText(A.y+"");
 		W.setText(A.w+"");
 		H.setText(A.h+"");
 		M.setText(A.mass+"");
 		Vx.setText(A.Velocity.getX()+"");
 		Vy.setText(A.Velocity.getY()+"");
 		
 		
 	}
	
 	public void Reseter(){
 		
 		ResetComp(X);
 		ResetComp(Y);
 		ResetComp(M);
 		ResetComp(W);
 		ResetComp(H);
 		ResetComp(Vx);
 		ResetComp(Vy);
 		Time=0; 		
 	}

 	public void ResetComp(JComponent A){
 		ActionEvent Event= new ActionEvent(A, 0, A.getName());
 		actionPerformed(Event);
 	}

	@Override
	public void mouseClicked(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	

 	
 	
}

class Comps{
	
	public JButton Button(String Msg,JToolBar Source,Gravity A){
	    
        JButton Temp= new JButton(Msg);
        Temp.addActionListener(A);
        if(Source!=null){Source.add(Temp);} else{A.add(Temp);}
        Temp.setVisible(true);
        return Temp;

    }

    public JMenu MenuMaker(char M,JMenuBar Source,String Msg,Gravity A){
    
        JMenu Temp= new JMenu(Msg);
        Source.add(Temp);
        Temp.setMnemonic(M);
        Temp.addActionListener(A);
        Temp.setVisible(true);
        return Temp;

    }


    public JMenuItem MenuItemMaker(char M,JMenu Source,String Msg,Gravity A){
    
        JMenuItem Temp= new JMenuItem(Msg);
        Source.add(Temp);
        Temp.setMnemonic(M);
        Temp.addActionListener(A);
        Temp.setVisible(true);
        return Temp;

    }
    public JTextField TextBox(int L,JToolBar Source,Gravity A){
        
        JTextField Temp= new JTextField(L);
        Temp.addActionListener(A);
        if(Source!=null){Source.add(Temp);} else{A.add(Temp);}
        Temp.setVisible(true);
        return Temp;

    }
    
    
 public JLabel Label(String Msg,JToolBar Source,Gravity A){
    
        JLabel Temp= new JLabel(Msg);
        if(Source!=null){Source.add(Temp);} else{A.add(Temp);}
        Temp.setVisible(true);
        return Temp;

    }
 	@SuppressWarnings({ "rawtypes", "unchecked" })
	public JComboBox List(String[] Msg,JToolBar Source,Gravity A){
	    
     JComboBox Temp= new JComboBox();
     for(int i=0;i<Msg.length;i++){
    	 Temp.addItem(Msg[i]);
     }
    
     if(Source!=null){Source.add(Temp);} else{A.add(Temp);}
     Temp.setVisible(true);
     Temp.addActionListener(A);
     return Temp;

 	}

	
}




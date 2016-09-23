//Imports
import java.awt.*;
import javax.swing.*;

/**Class which is used to create custom components(Buttons, Labels, Menus, ToolBars and ComboBoxes)
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
class clsCustomComp {

/**Creates a custom button
*@param Msg the display text of the Button
*@param Source the class in which the ActionListener is added
*@param Source2 The Panel which this button is added to
*@return new JButton with ActionListener and Caption
*/	
	public JButton Button(String Msg,clsMain Source,JPanel Source2){
		JButton Temp= new JButton(Msg);
		
		Temp.addActionListener(Source);
		if(Source2==null){Source.add(Temp);}else{Source2.add(Temp);}
		
		return Temp;	
	}

/**Creates a custom label
*@param Msg the display text of the Label
*@param Source the class in which the Label is added
*@param Source2 The Panel which this label is added to
*@return new JLabel with Caption
*/		
	public JLabel Label(String Msg,clsMain Source,JPanel Source2){
		JLabel Temp= new JLabel(Msg);
		
		if(Source2==null){Source.add(Temp);}else {Source2.add(Temp);}	
		
		return Temp;	
	}
	
/**Creates a Menu
*@param M The Mnemonic of the Menu
*@param Source MenuBar onto which the menu is added
*@param Msg Caption of the menu
*@param Listener class in which the ActionListener is added
*@return new Menu with an ActionListner, Mnemonic & Caption 
*/		
	 public JMenu MenuMaker(char M,JMenuBar Source,String Msg,clsMain Listener){
	        JMenu Temp= new JMenu(Msg);
	        
	        Source.add(Temp);
	        Temp.setMnemonic(M);
	        Temp.addActionListener(Listener);
	        Temp.setVisible(true);
	        
	        return Temp;
	    }

/**Creates a Menu Item
*@param M The Mnemonic of the Menu Item
*@param Source Menu onto which the menuItem is added
*@param Msg Caption of the menu
*@param Listener class in which the ActionListener is added
*@return new MenuItem with an ActionListner, Mnemonic & Caption 
*/		
	public JMenuItem MenuItemMaker(char M,JMenu Source,String Msg,clsMain Listener){
	        JMenuItem Temp= new JMenuItem(Msg);
	        
	        Source.add(Temp);
	        Temp.setMnemonic(M);
	        Temp.addActionListener(Listener);
	        Temp.setVisible(true);
	        
	        return Temp;

	    }
	
/**Creates a custom Tool bar
*@param Inp All the components to be added to this ToolBar
*@return new ToolBar with Components
*/		       
	public JToolBar ToolBox(Component[] Inp){
		JToolBar Temp= new JToolBar();
		
		for(int i=0; i<Inp.length;i++){
			Temp.add(Inp[i]);
		}
		
		return Temp;
	}

/**Creates a custom ComboBox
*@param Msg All of the Options in the ComboBox
*@param Source the class in which the ActionListener is added
*@param Source2 The Panel which this ComboBox is added to
*@return new JComboBox with ActionListener and Options
*/		
	public JComboBox ComboBox(String[] Msg,clsMain Source,JPanel Source2){
		JComboBox Temp= new JComboBox(Msg);
		
		Temp.addActionListener(Source);
		if(Source2==null){Source.add(Temp);}else{Source2.add(Temp);}
		
		return Temp;	
	}

	
}

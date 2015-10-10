import javax.swing.*;

public class clsMain extends JFrame{
	public clsMain(){
		super("Sketch Pad");
		setBounds(500,500,500,500);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}
	
	public static void main(String args[]){
		System.out.println("time to make something cool");
		clsMain ABC= new clsMain();
	}
}

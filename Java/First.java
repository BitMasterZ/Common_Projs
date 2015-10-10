import javax.swing.*;

public class First extends JFrame{

	public First(){
		super("Linux GUI");
		setSize(100,100);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	public static void main(String args[]){
		System.out.println("Hello Linux!");
		First ABC = new First();
	}

}

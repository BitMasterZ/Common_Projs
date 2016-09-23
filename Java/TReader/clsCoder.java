import java.awt.*;
import javax.swing.*;
import java.awt.event.*;
/**Class which is used to encrypt and decrypt text
 *  @author Shobhit Adlakha
 *  @author Karan Tawde
 *  @version 1.0
 *  @since JDK 7.2  
 */
public class clsCoder {
	 String Alphabets= "ABCDEFGHIJKMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()-_=+`~.<>,/?;:{}[]|' "+'\n'; // all possible encryptable and decryptable characters
/** Method used to encrypt the text
 * @param Inp the String which is encrypted
 * @param intAlgorithm which Algorithm to use for the encryption
 * @return the Encrypted string
 */	 
	  public String Encrypt(String Content, String Key){
        char[] Letters= Content.toCharArray();
        String Encrypted="";
        for(int i=0;i<Letters.length;i++){
            int Pos=Alphabets.indexOf(Letters[i]);
        
            
            for(int j=0; j<Key.length();j++){
            Pos+=Alphabets.indexOf(Key.charAt(j))*(Key.length()-j);
            }
            while(Pos>Alphabets.length()){Pos-=Alphabets.length();}
            Encrypted+=Alphabets.charAt(Pos);
            
        }
        return Encrypted;
    }
	
    public String Decrypt(String Content, String Key){
        char[] Letters= Content.toCharArray();
        String Decrypted="";
        for(int i=0;i<Letters.length;i++){
            int Pos=Alphabets.indexOf(Letters[i]);
        
            
            for(int j=0; j<Key.length();j++){
            Pos-=Alphabets.indexOf(Key.charAt(j))*(Key.length()-j);
            }
            while(Pos<0){Pos+=Alphabets.length();}
            Decrypted+=Alphabets.charAt(Pos);
            
        }
        return Decrypted;
    }
   
	 


}
/*
public class Crypter1 extends JFrame implements ActionListener {
    String Alpha="ABCDEFGHIJKMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*()-_=+`~.<>,/?;:{}[]|' "+'\n';
    Timer Refresher= new Timer(40, this);
    
    JLabel lblMsg= new JLabel("Enter text here");
    JTextArea txtText= new JTextArea(25,25);
    JScrollPane Holder= new JScrollPane(txtText,JScrollPane.VERTICAL_SCROLLBAR_AS_NEEDED,JScrollPane.HORIZONTAL_SCROLLBAR_AS_NEEDED);
    JButton jbSubmit = new JButton("Submit");
    ExtraPanes Text= new ExtraPanes("Text",new Component[]{lblMsg,Holder,jbSubmit});
    int Mode;
    JButton jbEncrypt= new JButton("Encrypt");
    JButton jbDecrypt= new JButton("Decrypt");
    JTextArea Display= new JTextArea();
    String Content,Key;
    
    
    
    public Crypter1(){
    setLayout(new FlowLayout());
    jbSubmit.addActionListener(this);
    txtText.setWrapStyleWord(true);
    add(jbEncrypt);
    jbEncrypt.addActionListener(this);
    add(jbDecrypt);
    jbDecrypt.addActionListener(this);
    add(Display);
    Display.setEditable(false);
    this.setVisible(true);
    setSize(500,600);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    
    public static void main(String args[]){
       Crypter1 obj= new Crypter1();
    }

    public void actionPerformed(ActionEvent event) {
        if(event.getSource()==Refresher){
            repaint();
        }
        if(event.getSource()==jbSubmit){
            Content=txtText.getText();
            Text.setVisible(false);
            do{
                Key=JOptionPane.showInputDialog("Enter the key phrase you wish to use here");
            }while(Key.equals(""));
            
            if(Mode==0){Encrypt();}
            else{Decrypt();}
        }
        
        else if(event.getSource()==jbEncrypt){
            Text.setVisible(true);
            Mode=0;
        }
        else if(event.getSource()==jbDecrypt){
            Text.setVisible(true);
            Mode=1;
        }
    }
    
    
    
    
    public void Decrypt(){
        char[] Letters= Content.toCharArray();
        String Decrypted="";
        for(int i=0;i<Letters.length;i++){
            int Pos=Alpha.indexOf(Letters[i]);
        
            
            for(int j=0; j<Key.length();j++){
            Pos-=Alpha.indexOf(Key.charAt(j))*(Key.length()-j);
            }
            while(Pos<0){Pos+=Alpha.length();}
            Decrypted+=Alpha.charAt(Pos);
            
        }
        txtText.setText(Decrypted);
        Display.setText(Decrypted);
    }
    

}

class ExtraPanes extends JFrame{
    Component[] Objects;
    public ExtraPanes(String Head,Dimension Size){
        super(Head);
        setSize(Size);
        setLayout(new FlowLayout());
        setVisible(false);
    }
    
    public ExtraPanes(String Head,Component[] things){
        super(Head);
        setLayout(new FlowLayout());
        Objects=things;
        for(int i=0;i<things.length;i++){
            add(things[i]);
        }
        pack();
        
        setVisible(false);
        
    }
    
    
}
   */

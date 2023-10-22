package login;

import java.awt.Color;
import java.awt.Desktop;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

public class AdminPage implements ActionListener {
	JFrame frame = new JFrame();

	JLabel welcomeLabel = new JLabel("lock for a student");
	
	JButton loginButton = new JButton("search");
	JButton moyen = new JButton("Moyen de Class");

	JButton resetButton = new JButton("cancel");

	JTextField userIDField = new JTextField();

	HashMap<String,String> logininfo = new HashMap<String,String>();

	JLabel userIDLabel = new JLabel("CNE:");

	
	
int i=0;
	public AdminPage(String user,HashMap<String,String> info){
		logininfo=info;
		userIDLabel.setBounds(50,150,75,25);
		userIDLabel.setForeground(new Color(255,255,255));
		
		welcomeLabel.setBounds(180, 100, 200, 25);
        welcomeLabel.setForeground(new Color(255,255,255));

		

		userIDField.setBounds(125,150,200,25);

		

		

		loginButton.setBounds(125,250,100,25);

		loginButton.setFocusable(false);

		loginButton.addActionListener(this);
		
		moyen.setBounds(125,275,200,25);

		moyen.setFocusable(false);

		moyen.addActionListener(this);

		

		resetButton.setBounds(225,250,100,25);

		resetButton.setFocusable(false);

		resetButton.addActionListener(this);

		

		frame.add(userIDLabel);
		frame.add(moyen);

	
		frame.add(userIDField);
		
	    frame.add(welcomeLabel);


		ImageIcon img =new ImageIcon("image/bigstock-abstract-technology-background-250119211.jpg");
        JLabel background=new JLabel("",img,JLabel.CENTER);
        background.setBounds(0, 0, 420, 420);
		
		
		frame.add(loginButton);

		frame.add(resetButton);
		frame.add(background);
		
	

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		frame.setSize(420,420);

		frame.setLayout(null);

		frame.setVisible(true);

		
		
		
		

		

	
}
	@Override
	public void actionPerformed(ActionEvent e) {
		String userID = userIDField.getText();
		if(e.getSource()==loginButton) {
			//----------------------------------------------------cree les fichier pdf---------------------------------------------------------------------
			  try {
				FileWriter fxqy = new FileWriter("src/main/resources/inpuut/student.xqy");
			     fxqy.write("let $x := doc(\"GINF22.xml\")/students/student[@CIN=\"M421426\"]\r\n"
			     		+ "return $x");
			     fxqy.close();
			  }catch(IOException exep) {
				  System.out.println("FILE NOT FOUND");
			  }
			
			
			studentpage welcomePage = new studentpage(userID,logininfo);
		}
		
		
		if(e.getSource()==moyen) {
			try {
				Desktop.getDesktop().open(new java.io.File("htmlfiles/GINF2Notes.html"));
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		
	}
}
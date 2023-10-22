
package login;

import java.awt.*;
import java.awt.event.*;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import javax.swing.*;

import Xquery.query;
import pdfcreator.FOPPdfDemo;

public class loginpage implements ActionListener {
	JFrame frame = new JFrame();
	

	JButton loginButton = new JButton("Login");

	JButton resetButton = new JButton("cancel");

	JTextField userIDField = new JTextField();

	JPasswordField userPasswordField = new JPasswordField();

	JLabel userIDLabel = new JLabel("LOGIN:");

	JLabel userPasswordLabel = new JLabel("PASSWORD	:");

	JLabel messageLabel = new JLabel();

	HashMap<String,String> logininfo = new HashMap<String,String>();

	

	public loginpage(HashMap<String,String> loginInfoOriginal){
		ImageIcon img =new ImageIcon("image/bigstock-abstract-technology-background-250119211.jpg");
        JLabel background=new JLabel("",img,JLabel.CENTER);
        background.setBounds(0, 0, 420, 420);
		logininfo = loginInfoOriginal;

		

		userIDLabel.setBounds(50,150,80,30);
		userIDLabel.setForeground(new Color(255,255,255));
		//userIDLabel.setBackground(Color.black);
		//userIDLabel.setOpaque(true);
        userPasswordLabel.setBounds(50,200,75,25);
        userPasswordLabel.setForeground(new Color(255,255,255));
   


		messageLabel.setBounds(125,300,250,35);

		messageLabel.setFont(new Font(null,Font.ITALIC,20));

		

		userIDField.setBounds(125,150,200,25);

		userPasswordField.setBounds(125,200,200,25);

		

		loginButton.setBounds(125,250,100,25);

		loginButton.setFocusable(false);

		loginButton.addActionListener(this);

		

		resetButton.setBounds(225,250,100,25);

		resetButton.setFocusable(false);

		resetButton.addActionListener(this);

		

		frame.add(userIDLabel);

		frame.add(userPasswordLabel);

		frame.add(messageLabel);

		frame.add(userIDField);

		frame.add(userPasswordField);

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
		if(e.getSource()==resetButton) {

			userIDField.setText("");

			userPasswordField.setText("");

		}

		

		if(e.getSource()==loginButton) {

			

			String userID = userIDField.getText();

			String password = String.valueOf(userPasswordField.getPassword());

			

			if(logininfo.containsKey(userID)) {
				
				
				
				
				

				if(logininfo.get(userID).equals(password)) {

					messageLabel.setForeground(Color.green);

					messageLabel.setText("Login successful");

					frame.dispose();
					if(password.equals("admin")) {	
						AdminPage admpage =new AdminPage(userID,logininfo);
					}else {

					studentpage welcomePage = new studentpage(userID,logininfo);
					}
				}

				else {

					messageLabel.setForeground(Color.red);

					messageLabel.setText("Wrong password");

				}



			}

			else {

				messageLabel.setForeground(Color.red);

				messageLabel.setText("username not found");

			}

		}

		
	}




}

package login;

import javax.swing.*;
import javax.swing.border.Border;

import Xquery.query;
import pdfcreator.FOPPdfDemo;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;

public class studentpage implements ActionListener {
	
	
	JFrame frame = new JFrame();

	JLabel welcomeLabel = new JLabel("Hello!");
	
	 JLabel fullname= new JLabel("FULL NAME :");
     JLabel CNE = new JLabel("CNE :");
     JLabel CIN = new JLabel("CIN :");
     JLabel dateN = new JLabel("DATE DE NAISSANCE :");
     JLabel ville = new JLabel("VILLE NATALE :");
     JLabel login ;
     JLabel pw ;

	JMenuBar menuBar;

	JMenu Document;
	JMenu Emploi;



	
	JMenuItem RELEVE;

	JMenuItem Attestations;

	JMenuItem Attestationr;
	JMenuItem mis1;
	JMenuItem mis2;
	JMenuItem mis3;
	JMenuItem mis4;
	
	
	JMenuItem Carte;
	JPanel pic;
	JPanel text;

	public studentpage(String user,HashMap<String,String> info){
		
		
		  
		


		//----------------------------------------------------cree les fichier pdf---------------------------------------------------------------------
		  try {
			FileWriter fxqy = new FileWriter("src/main/resources/inpuut/student.xqy");
		     fxqy.write("let $x := doc(\"xmlfiles/GINF2.xml\")/students/student[@CIN=\""+user+"\"]\r\n"
		     		+ "return $x");
		     fxqy.close();
		  }catch(IOException exep) {
			  System.out.println("FILE NOT FOUND");
		  }
		
		     
		     query q=new query("src/main/resources/inpuut/student.xqy","src/main/resources/inpuut/st.xml");

		     FOPPdfDemo CarteEtudiant = new FOPPdfDemo( "src//main//resources//inpuut//pdftest.xsl","src/main/resources/inpuut/st.xml","carteEtudiant.pdf");
			 
		     FOPPdfDemo Releve = new FOPPdfDemo( "src//main//resources//inpuut//relevesNote.xsl","src/main/resources/inpuut/st.xml","releves.pdf");
			
		     FOPPdfDemo atr = new FOPPdfDemo( "src//main//resources//inpuut//attesatationr.xsl","src/main/resources/inpuut/st.xml","attestationReuusit.pdf");
		
		ImageIcon img1 =new ImageIcon("image/rn.png");
		Image image1=img1.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
		img1=new ImageIcon(image1);
        ImageIcon img2 =new ImageIcon("image/atss.png");
        Image image2=img2.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
		img2=new ImageIcon(image2);
       ImageIcon img3 =new ImageIcon("image/reus.png");
       Image image3=img3.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
		img3=new ImageIcon(image3);
        ImageIcon img4 =new ImageIcon("image/emp.png");
        Image image4=img4.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
		img4=new ImageIcon(image4);
        ImageIcon img5 =new ImageIcon("image/index.jpg");
        Image image5=img5.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
		img5=new ImageIcon(image5);
		 ImageIcon img6 =new ImageIcon("image/doc.jpg");
	        Image image6=img6.getImage().getScaledInstance(50, 50,java.awt.Image.SCALE_SMOOTH);
			img6=new ImageIcon(image6);
        
        menuBar = new JMenuBar();
        
		Document = new JMenu("Document");
		Emploi = new JMenu("Emploi de temp");
		
		//EMPLOIS= new JMenu("EMPLOI DU TEMPS");
		
		RELEVE = new JMenuItem("Releve des Note");
		Attestations = new JMenuItem("Attestation  de Scolariter");
		Attestationr = new JMenuItem("Attestation  de Reussit");
		mis1 = new JMenuItem("MIS1");
		mis2 = new JMenuItem("MIS2");
		mis3 = new JMenuItem("MIS3");
		mis4 = new JMenuItem("MIS4");
		Carte= new  JMenuItem("Carte d'etudiant");
		
		
		RELEVE.setIcon(img1);
		Attestations.setIcon(img2);
		Attestationr.setIcon(img3);
		Emploi.setIcon(img4);
		Carte.setIcon(img5);
		Document.setIcon(img6);
		Document.add(RELEVE);
		Document.add(Attestations);
		Document.add(Attestationr);
		//Document.add(Emploi);
		Document.add(Carte);
		Emploi.add(mis1);
		Emploi.add(mis2);
		Emploi.add(mis3);
		Emploi.add(mis4);
	
       RELEVE.addActionListener(this);
       Attestations.addActionListener(this);
       Attestationr.addActionListener(this);
       mis1.addActionListener(this);
       mis2.addActionListener(this);
       mis3.addActionListener(this);
       mis4.addActionListener(this);
       Carte.addActionListener(this);
       
		menuBar.add(Document);
		menuBar.add(Emploi);
		
		
        pic =new JPanel();
		pic.setBackground(Color.WHITE);
		pic.setBounds(240, 180, 250, 250);
		text = new JPanel();
		text.setBackground(Color.WHITE);
		text.setBounds(100,460,500,140);

		ImageIcon img =new ImageIcon("image/bigstock-abstract-technology-background-250119211.jpg");
        JLabel background=new JLabel("",img,JLabel.CENTER);
        background.setBounds(0, 0, 750, 750);
        ImageIcon photo =new ImageIcon("image/myphoto.png");
        JLabel phot=new JLabel("",photo,JLabel.CENTER);
        phot.setBounds(240, 180, 250, 250);
		pic.add(phot);
		
		welcomeLabel.setBounds(40,50,200,20);
		welcomeLabel.setFont(new Font(null,Font.PLAIN,20));
		
		
		  login = new JLabel("login :         "+user);
	      pw = new JLabel("Password : "+info.get(user));
		
		
		//----------------------------------------------
	
		login.setBounds(150,460,400,70);
		login.setFont(new Font(null,Font.PLAIN,40));
		login.setForeground(Color.black);
		
		
		login.setVisible(true);
		pw.setBounds(150,500,500,70);
		pw.setFont(new Font(null,Font.PLAIN,40));
		pw.setForeground(Color.black);
	
		pw.setVisible(true);
	   
		//-----------------------------------------------
		welcomeLabel.setText("Hello administrator  "+user);
		 Border blackline = BorderFactory.createLineBorder(Color.black);
	text.setBorder(blackline);
		
			
		
		frame.setJMenuBar(menuBar);
		text.add(login);
		text.add(pw);
		frame.add(pic);
		frame.add(text);
		frame.add(background);
		
		//frame.getContentPane().setBackground(new Color(204, 204, 255));

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		frame.setSize(750, 750);

		frame.setLayout(null);

		frame.setVisible(true);
}

	@Override
	public void actionPerformed(ActionEvent e)   {
		if(e.getSource()==Carte) {
			try {
				Desktop.getDesktop().open(new java.io.File("src/main/resources/output/carteEtudiant.pdf"));
			} catch (IOException e1) {
				System.out.println("file not found");
				e1.printStackTrace();
			}
		}
		
		if(e.getSource()==RELEVE) {
			try {
				Desktop.getDesktop().open(new java.io.File("src/main/resources/output/releves.pdf"));
			} catch (IOException e1) {
				System.out.println("file not found");
				e1.printStackTrace();
			}
		}
		
		if(e.getSource()==Attestationr) {
			try {
				Desktop.getDesktop().open(new java.io.File("src/main/resources/output/attestationReuusit.pdf"));
			} catch (IOException e1) {
				System.out.println("file not found");
				e1.printStackTrace();
			}
		}
		

		
				if((e.getSource()==mis1)) {
					
					
					
					try {
						Desktop.getDesktop().open(new java.io.File("htmlfiles/EMPLOI1.html"));
					} catch (IOException e1) {
						System.out.println("file not found");
						e1.printStackTrace();
					}
				}
		if((e.getSource()==mis2)) {

				
				
				try {
					Desktop.getDesktop().open(new java.io.File("htmlfiles/EMPLOI2.html"));
				} catch (IOException e1) {
					System.out.println("file not found");
					e1.printStackTrace();
				}
			}

	if((e.getSource()==mis3)) {
		

		
		try {
			Desktop.getDesktop().open(new java.io.File("htmlfiles/EMPLOI3.html"));
		} catch (IOException e1) {
			System.out.println("file not found");
			e1.printStackTrace();
		}	}

			

	if((e.getSource()==mis4)) {
		
		
		
		try {
			Desktop.getDesktop().open(new java.io.File("htmlfiles/EMPLOI4.html"));
		} catch (IOException e1) {
			System.out.println("file not found");
			e1.printStackTrace();
		}
	}

}
	
		
		
		
	}

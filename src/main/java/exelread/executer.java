package exelread;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.NoSuchElementException;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import Xquery.query;
import login.AdminPage;
import login.loginInfo;
import login.loginpage;
import login.studentpage;
import pdfcreator.FOPPdfDemo;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;


import org.apache.poi.ss.usermodel.Cell;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class executer {
	public static void main(String[] args)throws IOException, Exception {

		
		
		
		//excel reade
		File f =new File("exelfiles/GINF2.xlsx");
		FileInputStream fis= new FileInputStream(f);
		XSSFWorkbook w=new XSSFWorkbook(fis);
		XSSFSheet sheet=w.getSheetAt(0);
		//	------------------------------------------------------------Notef---------------------------------------------------------
		//excel reade
				File f1 =new File("exelfiles/lesNotes.xlsx");
				FileInputStream fis1= new FileInputStream(f1);
				XSSFWorkbook w1=new XSSFWorkbook(fis1);
				XSSFSheet sheet1=w1.getSheetAt(0);
				//excel reade
			
				
	
		//create GINF2.xml---------------------------------------------------------------------------------------------------------
				//create doc
				 DocumentBuilderFactory dbFactory =
				         DocumentBuilderFactory.newInstance();
				         DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				         Document doc = dBuilder.newDocument();
				//xml element root
				         Element rootElement = doc.createElement("students");
				         doc.appendChild(rootElement); 
				      
try {	
	int indic=0;
	System.out.println("--------------------------------------------------------");
    Iterator<Row> rt = sheet.iterator();
	while((rt.hasNext())&&(indic<55)){
		indic++;
		Row rw = rt.next();
		Iterator<Cell> cl = rw.cellIterator();
		Cell c1 =cl.next();
		Cell c2 =cl.next();
		Cell c3 =cl.next();
		Cell c4 =cl.next();
		Cell c5 =cl.next();
		 Element student = doc.createElement("student");
 rootElement.appendChild(student);
 Attr attr1 = doc.createAttribute("CIN");
 attr1.setValue(c3.toString());
 student.setAttributeNode(attr1);
 Attr attr2 = doc.createAttribute("CNE");
 attr2.setValue((c1.toString()));
 student.setAttributeNode(attr2);
 
 Element FULLNAME = doc.createElement("FULLNAME");
 FULLNAME.appendChild(doc.createTextNode(c4.toString()));
 student.appendChild(FULLNAME);
 
 Element Ns = doc.createElement("NESSANCE");
 Ns.appendChild(doc.createTextNode(c2.toString()));
 student.appendChild(Ns);
 Element Ville = doc.createElement("Ville");
 Ville.appendChild(doc.createTextNode(c5.toString()));
 student.appendChild(Ville);
 Element Modules = doc.createElement("Modules");
 student.appendChild(Modules);
 
Element Module1= doc.createElement("GINF31");
 Modules.appendChild(Module1);
 Element Module2= doc.createElement("GINF32");
 Modules.appendChild(Module2);
 Element Module3= doc.createElement("GINF33");
 Modules.appendChild(Module3);
 Element Module4= doc.createElement("GINF34");
 Modules.appendChild(Module4);
 Element Module5= doc.createElement("GINF35");
 Modules.appendChild(Module5);
 Element Module6= doc.createElement("GINF36");
 Modules.appendChild(Module6);
 Element Module7= doc.createElement("GINF41");
 Modules.appendChild(Module7);
 Element Module8= doc.createElement("GINF42");
 Modules.appendChild(Module8);
 Element Module9= doc.createElement("GINF43");
 Modules.appendChild(Module9);
 Element Module10= doc.createElement("GINF44");
 Modules.appendChild(Module10);
 Element Module11= doc.createElement("GINF45");
 Modules.appendChild(Module11); 
 Element Module12= doc.createElement("GINF46");
 Modules.appendChild(Module12);
 
 Iterator<Row> shadow = sheet1.iterator();
 while(shadow.hasNext()) {
	
		Row rws = shadow.next();
	   Iterator<Cell> clshadow = rws.cellIterator();
	   Cell c1s =clshadow.next();
		Cell c2s =clshadow.next();
		Cell c3s =clshadow.next();
		Cell c4s =clshadow.next();
		//System.out.println(c1s.toString());
		
		
		if(c1s.toString().equals(c1.toString())) {
			//System.out.println("TRUE");
			
		if(c2s.toString().equals("GINF31")) {
			
			Element Mat = doc.createElement("Matiere");
			 Attr noteM = doc.createAttribute("Note");
			 noteM.setValue(c4s.toString());
			 Mat.setAttributeNode(noteM);
			 Mat.appendChild(doc.createTextNode(c3s.toString()));
			 
			 Module1.appendChild(Mat);
			
			 }
if(c2s.toString().equals("GINF32")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module2.appendChild(Mat);
}
if(c2s.toString().equals("GINF33")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module3.appendChild(Mat);
}
if(c2s.toString().equals("GINF34")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module4.appendChild(Mat);
}
if(c2s.toString().equals("GINF35")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module5.appendChild(Mat);
}
if(c2s.toString().equals("GINF36")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module6.appendChild(Mat);
}
if(c2s.toString().equals("GINF41")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module7.appendChild(Mat);
}
if(c2s.toString().equals("GINF42")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module8.appendChild(Mat);
}
if(c2s.toString().equals("GINF43")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module9.appendChild(Mat);
}
if(c2s.toString().equals("GINF44")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module10.appendChild(Mat);
}
		
if(c2s.toString().equals("GINF45")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module11.appendChild(Mat);
}
if(c2s.toString().equals("GINF46")) {
	Element Mat = doc.createElement("Matiere");
	 Attr noteM = doc.createAttribute("Note");
	 noteM.setValue(c4s.toString());
	 Mat.setAttributeNode(noteM);
	 Mat.appendChild(doc.createTextNode(c3s.toString()));
	 
	 Module12.appendChild(Mat);
}
		
		
		}

		
		}

}
	
}catch(NoSuchElementException e){
	System.out.println("no element found");
}
	    
		fis.close();
		
		
		//--------------------------------------------------------------------------------------------------------------------------------------------------------
		

// write the content into xml file
TransformerFactory transformerFactory = TransformerFactory.newInstance();
        Transformer transformer = transformerFactory.newTransformer();
        DOMSource source = new DOMSource(doc);
        StreamResult result = new StreamResult(new File("xmlfiles/GINF2.xml"));
        transformer.transform(source, result);
        
      
     System.out.println(validateXMLSchema("xsdfiles/GINF2.xsd","xmlfiles/GINF2.xml"));
     EMpxmlgeneretor("exelfiles/EMPLOI.xlsx","xmlfiles/EMPLOI2.xml","mis2");
     EMpxmlgeneretor("exelfiles/EMPLOI1.xlsx","xmlfiles/EMPLOI1.xml","mis1");
     EMpxmlgeneretor("exelfiles/EMPLOI3.xlsx","xmlfiles/EMPLOI3.xml","mis3");
     EMpxmlgeneretor("exelfiles/EMPLOI4.xlsx","xmlfiles/EMPLOI4.xml","mis4");
     
     //generation du html
     htmlgenerator("xsltfiles/GINF2.xslt","xmlfiles/GINF2.xml","htmlfiles/GINF2Notes.html");
     htmlgenerator("xsltfiles/EMPLOI.xslt","xmlfiles/EMPLOI2.xml","htmlfiles/EMPLOI2.html");
     htmlgenerator("xsltfiles/EMPLOI.xslt","xmlfiles/EMPLOI1.xml","htmlfiles/EMPLOI1.html");
     htmlgenerator("xsltfiles/EMPLOI.xslt","xmlfiles/EMPLOI3.xml","htmlfiles/EMPLOI3.html");
     htmlgenerator("xsltfiles/EMPLOI.xslt","xmlfiles/EMPLOI4.xml","htmlfiles/EMPLOI4.html");
     
    
    
  
     
   //app interface		
		
   		loginInfo test1=new loginInfo();
           System.out.println(test1.getInfo().toString());

           loginpage login1=new loginpage(test1.getInfo()); 
 
	}
	
	 public static boolean validateXMLSchema(String xsdPath, String xmlPath){
	        
	        try {
	            SchemaFactory factory = 
	                    SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
	            Schema schema = factory.newSchema(new File(xsdPath));
	            Validator validator = schema.newValidator();
	            validator.validate(new StreamSource(new File(xmlPath)));
	        } catch (IOException | SAXException e) {
	            System.out.println("Exception: "+e.getMessage());
	            return false;
	        }
	        return true;
	    }
	 
	 
	 
	 public static void EMpxmlgeneretor(String ExelName,String output,String mis) throws IOException, ParserConfigurationException {

			File fEMP =new File(ExelName);
			FileInputStream fisEMP= new FileInputStream(fEMP);
			XSSFWorkbook wEMP=new XSSFWorkbook(fisEMP);
			XSSFSheet sheetEMP=wEMP.getSheetAt(0);
			
			//create EMPLOI.xml---------------------------------------------------------------------------------------------------------
			//create doc
			 DocumentBuilderFactory dbFactoryEMP =
			         DocumentBuilderFactory.newInstance();
			         DocumentBuilder dBuilderEMP = dbFactoryEMP.newDocumentBuilder();
			         Document docEMP = dBuilderEMP.newDocument();
			//xml element root
			         Element rootElementEMP = docEMP.createElement("JOURS");
			         docEMP.appendChild(rootElementEMP); 
//------------------------------------------------------------------------------------------------
			         Iterator<Row> rtEMP = sheetEMP.iterator();	         
			    while(rtEMP.hasNext()) {
			    	Row rwEMP = rtEMP.next();
			    	Iterator<Cell> clE = rwEMP.cellIterator();
			    	Cell c1E =clE.next();
					Cell c2E =clE.next();
					Cell c3E =clE.next();
					Cell c4E =clE.next();
					Cell c5E =clE.next();
					Cell c6E =clE.next();
					Cell c7E =clE.next();
					Cell c8E =clE.next();
					Cell c9E =clE.next();
					Cell c10E =clE.next();
					Cell c11E =clE.next();
					Cell c12E =clE.next();
					Cell c13E =clE.next();
					Cell c14E =clE.next();
					Cell c15E =clE.next();
					Cell c16E =clE.next();
					Cell c17E =clE.next();
					Cell c18E =clE.next();
					Cell c19E =clE.next();
					Cell c20E =clE.next();
					Cell c21E =clE.next();
					Cell c22E =clE.next();
					Cell c23E =clE.next();
					Cell c24E =clE.next();
					Cell c25E =clE.next();

			    	Element jour = docEMP.createElement("jour");
			    	 rootElementEMP.appendChild(jour);
			    	 Attr jr = docEMP.createAttribute("Nom");
			    	 jr.setValue(c1E.toString());
			    	 jour.setAttributeNode(jr);
			    	 
			    	 Attr semestre = docEMP.createAttribute("semestre");
			    	 semestre.setValue(mis);
			    	 jour.setAttributeNode(semestre);
			    	
			    	 Element Matin = docEMP.createElement("Matin");
			    	 jour.appendChild(Matin);
			    	  
			    	 Element Matiere1 = docEMP.createElement("Matiere");
			    	 
			    	 
			    	 Attr type1 = docEMP.createAttribute("type");
			    	 type1.setValue(c5E.toString());
			    	 Matiere1.setAttributeNode(type1);
			    	 
			    	 Attr time1 = docEMP.createAttribute("time");
			    	 time1.setValue(c18E.toString()+" - "+c19E.toString());
			    	 Matiere1.setAttributeNode(time1);
			    	 
			    	 Element Nm1 = docEMP.createElement("Nom");
			    	 Nm1.appendChild(docEMP.createTextNode(c2E.toString()));
			    	 Matiere1.appendChild(Nm1);
			    	 Element prof1 = docEMP.createElement("prof");
			    	 prof1.appendChild(docEMP.createTextNode(c3E.toString()));
			    	 Matiere1.appendChild(prof1);
			    	 Element class1 = docEMP.createElement("class");
			    	 class1.appendChild(docEMP.createTextNode(c4E.toString()));
			    	 Matiere1.appendChild(class1);
			    	 Matin.appendChild(Matiere1);
			    	 
			    	 
			    	 Element Matiere2 = docEMP.createElement("Matiere");
				    	
			    	 
			    	 Attr type2 = docEMP.createAttribute("type");
			    	 type2.setValue(c9E.toString());
			    	 Matiere2.setAttributeNode(type2);
			    	 
			    	 Attr time2 = docEMP.createAttribute("time");
			    	 time2.setValue(c20E.toString()+" - "+c21E.toString());
			    	 Matiere2.setAttributeNode(time2);
			    	 

			    	 
			    	 Element Nm2 = docEMP.createElement("Nom");
			    	 Nm2.appendChild(docEMP.createTextNode(c6E.toString()));
			    	 Matiere2.appendChild(Nm2);
			    	 Element prof2 = docEMP.createElement("prof");
			    	 prof2.appendChild(docEMP.createTextNode(c7E.toString()));
			    	 Matiere2.appendChild(prof2);
			    	 Element class2 = docEMP.createElement("class");
			    	 class2.appendChild(docEMP.createTextNode(c8E.toString()));
			    	 Matiere2.appendChild(class2);
			    	 
			    	 Matin.appendChild(Matiere2);
			   
			    	 Element ApreMidit = docEMP.createElement("ApreMedit");
			    	 jour.appendChild(ApreMidit);
			    	 
			    	 
                     Element Matiere3 = docEMP.createElement("Matiere");
			    	 
			    
                     
			    	 Attr type3 = docEMP.createAttribute("type");
			    	 type3.setValue(c13E.toString());
			    	 Matiere3.setAttributeNode(type3);
			    	 
			    	 Attr time3 = docEMP.createAttribute("time");
			    	 time3.setValue(c22E.toString()+" - "+c23E.toString());
			    	 Matiere3.setAttributeNode(time3);
			    	 

			    	 
			    	 Element Nm3 = docEMP.createElement("Nom");
			    	 Nm3.appendChild(docEMP.createTextNode(c10E.toString()));
			    	 Matiere3.appendChild(Nm3);
			    	 Element prof3 = docEMP.createElement("prof");
			    	 prof3.appendChild(docEMP.createTextNode(c11E.toString()));
			    	 Matiere3.appendChild(prof3);
			    	 Element class3 = docEMP.createElement("class");
			    	 class3.appendChild(docEMP.createTextNode(c12E.toString()));
			    	 Matiere3.appendChild(class3);
			    	 ApreMidit.appendChild(Matiere3);
			    	 
			    	 
			    	 Element Matiere4 = docEMP.createElement("Matiere");
				    	
			    	 
			    	 Attr type4 = docEMP.createAttribute("type");
			    	 type4.setValue(c17E.toString());
			    	 Matiere4.setAttributeNode(type4);
			    	 Attr time4 = docEMP.createAttribute("time");
			    	 time4.setValue(c24E.toString()+" - "+c25E.toString());
			    	 Matiere4.setAttributeNode(time4);
			    	 

			    	 
			    	 Element Nm4 = docEMP.createElement("Nom");
			    	 Nm4.appendChild(docEMP.createTextNode(c14E.toString()));
			    	 Matiere4.appendChild(Nm4);
			    	 Element prof4 = docEMP.createElement("prof");
			    	 prof4.appendChild(docEMP.createTextNode(c15E.toString()));
			    	 Matiere4.appendChild(prof4);
			    	 Element class4 = docEMP.createElement("class");
			    	 class4.appendChild(docEMP.createTextNode(c16E.toString()));
			    	 Matiere4.appendChild(class4);
			    	 
			    	 ApreMidit.appendChild(Matiere4);
			    	// write the content into xml file
			    	 TransformerFactory transformerFactory = TransformerFactory.newInstance();
			    	         Transformer transformer;
							try {
								transformer = transformerFactory.newTransformer();
								  DOMSource sourceEMP = new DOMSource(docEMP);
						          StreamResult resultEMP = new StreamResult(new File(output));
						          transformer.transform(sourceEMP, resultEMP);
						    	 
							} catch (TransformerException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
			    	
			    	 
			    	 
			    }
			         
			
		 
	 }
	 
	 
	 public static void htmlgenerator(String xsltfile,String xmlfile,String outputhtml) throws TransformerException{
		 TransformerFactory factory = TransformerFactory.newInstance();
	     StreamSource xltsrc = new StreamSource(xsltfile);
	     StreamSource in = new StreamSource(xmlfile);
	     StreamResult outhtml = new StreamResult(outputhtml);
	     Transformer xsltt1 = factory.newTransformer(xltsrc);
	     xsltt1.transform(in, outhtml);
	 }

}

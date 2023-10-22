package login;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class loginInfo {
 HashMap<String,String> loginData=new HashMap<String,String>();
public loginInfo() throws IOException{
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
			
			int indic=0;
			
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
				loginData.put(c3.toString(),c3.toString()+indic+indic+"P");
			}
			
	loginData.put("user","user");
	loginData.put("admin","admin");
	
	}
public HashMap<String,String> getInfo(){
	return(this.loginData);
}

}

package Xquery;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Properties;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;
import javax.xml.xquery.XQPreparedExpression;
import javax.xml.xquery.XQResultSequence;

import com.saxonica.xqj.SaxonXQDataSource;
import java.io.FileWriter;   // Import the FileWriter class
import java.io.IOException;

public class query {
	public query(String s,String s1 ) {
try {
			
			
			solve(s,s1);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	 
	/*public static void main(String[] args)
	{
		try {
			
			
			solve("src/main/resources/inpuut/student.xqy","src/main/resources/inpuut/st.xml");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}*/
	private static void solve(String s,String sf) throws
			FileNotFoundException, XQException,IOException {
		FileWriter myWriter = new FileWriter(sf);
		
		InputStream inputStream =
			new FileInputStream(new File(s));

		XQDataSource ds = new SaxonXQDataSource();
		XQConnection conn = ds.getConnection();
		XQPreparedExpression exp =
			conn.prepareExpression(inputStream);

		XQResultSequence result = exp.executeQuery();
		FileOutputStream os = new FileOutputStream(new File(sf));
		result.writeSequence(os, new Properties());
		
	}
}


package pdfcreator;



import java.io.File;
import java.io.IOException;
import java.io.OutputStream;

import javax.xml.transform.Result;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.FOUserAgent;
import org.apache.fop.apps.Fop;
import org.apache.fop.apps.FopFactory;
import org.apache.fop.apps.MimeConstants;

public class FOPPdfDemo {
	
	public static final String RESOURCES_DIR;
	public static final String OUTPUT_DIR;
	
	static {
		RESOURCES_DIR = "src//main//resources//";
		OUTPUT_DIR = "src//main//resources//output//";
	}
	
	public FOPPdfDemo(String xslfile,String xmlfile,String outPut){
		try {
			
			convertToPDF(xslfile,xmlfile,outPut);;
		} catch (FOPException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} catch (TransformerException e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	
	
	public static void main(String[] args) {
		 FOPPdfDemo Releve = new FOPPdfDemo( "src//main//resources//inpuut//attesatationr.xsl","src/main/resources/inpuut/st.xml","atr.pdf");
	
	}

	public void convertToPDF(String xslfile,String xmlfile,String outPut) throws IOException, FOPException, TransformerException {
		
		File xsltFile = new File(xslfile);

		StreamSource xmlSource = new StreamSource(new File(xmlfile));
		
		FopFactory fopFactory = FopFactory.newInstance(new File(".").toURI());
		
		FOUserAgent foUserAgent = fopFactory.newFOUserAgent();
		
		OutputStream out;
		out = new java.io.FileOutputStream(OUTPUT_DIR + outPut);

		try {
			
			Fop fop = fopFactory.newFop(MimeConstants.MIME_PDF, foUserAgent, out);

			
			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));

			Result res = new SAXResult(fop.getDefaultHandler());

			
			transformer.transform(xmlSource, res);
		} finally {
			out.close();
		}
	}

	
	public void convertToFO(String xslfile,String xmlfile) throws IOException, FOPException, TransformerException {
		
		File xsltFile = new File(xslfile);
		
		StreamSource xmlSource = new StreamSource(new File(xmlfile));

		OutputStream out;

		out = new java.io.FileOutputStream(OUTPUT_DIR + "temp.fo");

		try {
			
			TransformerFactory factory = TransformerFactory.newInstance();
			Transformer transformer = factory.newTransformer(new StreamSource(xsltFile));

			

			Result res = new StreamResult(out);

			transformer.transform(xmlSource, res);

			
			transformer.transform(xmlSource, res);
		} finally {
			out.close();
		}
	}

}

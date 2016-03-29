package Men_Wear;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
 





import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.ExporterInput;
import net.sf.jasperreports.export.OutputStreamExporterOutput;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;


@WebServlet("/Invoice_sample")
public class Invoice_sample extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String url = "jdbc:mysql://localhost/";
		String url1 = "jdbc:mysql://localhost/OnlineShopping";
		String username = "root";
		String password = "root";
		
		try {
		String reportSrcFile = "D:/xUser/Blank_A4.jrxml";
		
		// First, compile jrxml file.
		JasperReport jasperReport =    JasperCompileManager.compileReport(reportSrcFile);

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url1,username,password);
		
         String invoice=request.getParameter("Invoice_No");
         Long invoice_no=Long.parseLong(invoice);
         System.out.println("Invoice no is"+invoice_no);
		// Parameters for report
		HashMap<String, Object> map= new HashMap<String, Object>();
		map.put("Parameter1", invoice_no);

		JasperPrint print = JasperFillManager.fillReport(jasperReport,
		        map, conn);

		// Make sure the output directory exists.
		File outDir = new File("D:/jasper_reports");
		outDir.mkdirs();

		// PDF Exportor.
		JRPdfExporter exporter = new JRPdfExporter();

		ExporterInput exporterInput = new SimpleExporterInput(print);
		// ExporterInput
		exporter.setExporterInput(exporterInput);

		// ExporterOutput
		OutputStreamExporterOutput exporterOutput = new SimpleOutputStreamExporterOutput(
		        "D:jasper_reports/"+invoice+".pdf");
		// Output
		exporter.setExporterOutput(exporterOutput);

		//
		SimplePdfExporterConfiguration configuration = new SimplePdfExporterConfiguration();
		exporter.setConfiguration(configuration);
		exporter.exportReport();

		System.out.print("Done!");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

}

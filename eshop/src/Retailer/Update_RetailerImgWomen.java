package Retailer;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Retailer_Men_Image;
import Bean.Retailer_Women_Image;

@WebServlet("/Update_RetailerImgWomen")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Update_RetailerImgWomen extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static String getFileName(Part image)
	{
		String img=image.getHeader("content-disposition");
		System.out.println(img);
		String[] tokens=img.split(";");
		for(String ob:tokens)
		{
			if(ob.trim().startsWith("filename"))
			{
				return ob.substring(ob.indexOf("=")+2, ob.length()-1);
			}
		}
		return "";
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Product=request.getParameter("product_id");	
		  String color=request.getParameter("Color");
		  String filename=request.getParameter("Filename");
	
		  Part image=request.getPart("Image");
		  InputStream is=image.getInputStream(); 
		 
		  String filename_new=null;
		  filename_new=getFileName(image);
		Retailer_Women_Image obj=new Retailer_Women_Image(Product, color, is, filename, filename_new);
		int i=  Model.Model_RetailerWomen_Edit.Edit_Prdct_Image(obj);
		
		if(i>0)
		{
			response.sendRedirect("Show_RetailerImageEditWomen.jsp?Filename="+filename_new+"&Products_Id="+Product+" ");
		}
		if(i==-1)
		{
			String mssg="Same Image Already Exist For The Product";
			response.sendRedirect("Retailer_Women_EditPrdct.jsp?Message="+mssg);
			
		}
	}

}

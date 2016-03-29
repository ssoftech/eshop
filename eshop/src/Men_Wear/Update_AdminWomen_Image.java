package Men_Wear;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Men_Image;
import Bean.Women_Image;

/**
 * Servlet implementation class Update_AdminWomen_Image
 */
@WebServlet("/Update_AdminWomen_Image")
@MultipartConfig(maxFileSize=1024*1024*16)


public class Update_AdminWomen_Image extends HttpServlet {
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
		String product_id=request.getParameter("product_id");
		  String color=request.getParameter("Color");
		  String filename=request.getParameter("Filename");
		  System.out.println(product_id+" "+color);
		  Part image=request.getPart("Image");
		  InputStream is=image.getInputStream(); 
		 
		  String filename_new=null;
		  filename_new=getFileName(image);
		Women_Image obj=new Women_Image(product_id, color, is, filename, filename_new);
		int i=  Model.Model_Women_Edit.Edit_Prdct_Image(obj);
		
		if(i>0)
		{
			response.sendRedirect("Show_ImageAdminWomen_Edit.jsp?Filename="+filename_new+"&Products_Id="+product_id+" ");
		}
		if(i==-1)
		{
			String mssg="Same Image Already Exist For The Product";
			response.sendRedirect("Admin_Women_EditPrdct.jsp?Message="+mssg);
			
		}
	}

}

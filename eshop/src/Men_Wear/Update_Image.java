package Men_Wear;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Men_Image;
import Model.Model_Men_Edit;


@WebServlet("/Update_Image")
public class Update_Image extends HttpServlet {
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String product_id=request.getParameter("product_id");
		  String color=request.getParameter("Color");
		  String filename=request.getParameter("Filename");
		  Part image=request.getPart("Image");
		  InputStream is=image.getInputStream();
		  
		  String filename_new=null;
		  filename_new=getFileName(image);
		  
		Men_Image obj=new Men_Image(product_id, color, is, filename, filename_new);
		int i=  Model.Model_Men_Edit.Edit_Prdct_Image(obj);
		
		if(i>0)
		{
			response.sendRedirect("Show_ImageEdit.jsp");
		}
		    
	}

}

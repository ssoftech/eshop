package Men_Wear;

import java.io.IOException;




import java.io.InputStream;








import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import javax.servlet.http.Part;

import Bean.*;




@WebServlet("/Admin_Men_InsertPrdct")

public class Admin_Men_InsertPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//Product Insert
		try {
			String ProductAddedOn=request.getParameter("ProductAddedOn");
			String Product_Id=request.getParameter("Product_Id");
			String Category=request.getParameter("Category_MenWear");
			String Type=request.getParameter("Type_MenWear");
			String Brand_Name=request.getParameter("BrandName");
			String Fittings=request.getParameter("Fit");
			Double Price=0.00;
			try {
				Price = Double.parseDouble(request.getParameter("Price"));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String About_The_Product=request.getParameter("About_The_Product");
			String Header=request.getParameter("Header");
			
			Men_Prdct obj= new Men_Prdct(ProductAddedOn, Product_Id, Category, Type, Brand_Name, Fittings, Price, About_The_Product, Header);
			int i=Model.Model_Men_Prdct.Insert(obj);
			if(i==1)
			{    
				
				String message="Product:"+"  "+Product_Id+ "  added successfully";
				response.sendRedirect("Admin_Men_InsertPrdct.jsp?Mssg="+message);
			}
			
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
	}

}

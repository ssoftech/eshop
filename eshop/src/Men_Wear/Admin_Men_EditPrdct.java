package Men_Wear;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.*;



@WebServlet("/Admin_Men_EditPrdct")
public class Admin_Men_EditPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try {
			String ProductAddedOn=request.getParameter("ProductAddedOn");
			String Product_Id=request.getParameter("Product_Id");
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
			
			Men_Edit obj=new Men_Edit(ProductAddedOn, Type, Brand_Name, Fittings, Price, About_The_Product, Header, Product_Id);
			int i=Model.Model_Men_Edit.Edit_Prdct(obj);
			if(i==1)
			{
				PrintWriter out=response.getWriter();
				out.println(i+"Row updated");
			}
		} 
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	
	
	
	}	

}

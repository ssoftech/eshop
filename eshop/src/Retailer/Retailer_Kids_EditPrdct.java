package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Retailer_Edit;
import Bean.Kids_Edit;


@WebServlet("/Retailer_Kids_EditPrdct")
public class Retailer_Kids_EditPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			String ProductAddedOn=request.getParameter("ProductAddedOn");
			String Retailer_Name=request.getParameter("Retailer_Name");
			String Product_Id=request.getParameter("Product_Id");
			String Type=request.getParameter("Type_KidsWear");
			String Brand_Name=request.getParameter("BrandName");
			String Fittings=request.getParameter("Fit");
			Double Price=0.00;
			
			try {
				Price = Double.parseDouble(request.getParameter("Price"));
				System.out.println("Price is"+Price);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			String About_The_Product=request.getParameter("About_The_Product");
			String Header=request.getParameter("Header");
			
			Retailer_Edit obj=new Retailer_Edit(ProductAddedOn, Retailer_Name, Type, Brand_Name, Fittings, Price, About_The_Product, Header, Product_Id);
			int i=Model.Model_RetailerKids_Edit.Edit_Prdct(obj);
			
			if(i==1)
			{
			   String mssg="Product Updated Successfully";
			   response.sendRedirect("Retailer_Kids_EditPrdct.jsp?Message"+mssg);
			}
			else
			{
				String mssg="Product not updated. Please try another time. ";
				response.sendRedirect("Retailer_Kids_EditPrdct.jsp?Message="+mssg);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

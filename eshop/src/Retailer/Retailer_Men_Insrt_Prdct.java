package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Men_Prdct;
import Bean.Retailer_Men_Prdct;

@WebServlet("/Retailer_Men_Insrt_Prdct")
public class Retailer_Men_Insrt_Prdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Product Insert Men
				try {
					String ProductAddedOn=request.getParameter("ProductAddedOn");
					String Product_Id=request.getParameter("Product_Id");
					String Retailer_Name=request.getParameter("Product_SoldBy");
					String Category=request.getParameter("Category_MenWear");
					String Type=request.getParameter("Type_MenWear");
					String Brand_Name=request.getParameter("BrandName");
					String Fittings=request.getParameter("Fit");
					Double Price=0.00;
					int i=0;
					try {
						Price = Double.parseDouble(request.getParameter("Price"));
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					String About_The_Product=request.getParameter("About_The_Product");
					String Header=request.getParameter("Header");
					if(ProductAddedOn!="" && Product_Id!="" && Retailer_Name!="" && Category!="" && Type!="" && Brand_Name!="" && Fittings!="" && Price!=0.00)
					{
					Retailer_Men_Prdct obj= new Retailer_Men_Prdct(ProductAddedOn, Product_Id, Retailer_Name, Category, Type, Brand_Name, Fittings, Price, About_The_Product, Header);
					i=Model.Model_Retailer_Men_Prdct.Insert(obj);
					}
					else
					{
						String mssg="Row cannot be inserted.All fields must be filled";
						response.sendRedirect("Retailer_Men_InsertPrdct.jsp?Mssg="+mssg);
						
					}
					if(i==1)
					{    
						
						String message="Product:"+"  "+Product_Id+ "  added successfully";
						response.sendRedirect("Retailer_Men_InsertPrdct.jsp?Mssg="+message);
					}
					
				} 
				catch (Exception e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		
	}

}

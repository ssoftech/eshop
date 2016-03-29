package Men_Wear;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Women_Prdct;

@WebServlet("/Admin_Women_InsertPrdct")
public class Admin_Women_InsertPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Product Insert
				try {
					String ProductAddedOn=request.getParameter("ProductAddedOn");
					String Product_Id=request.getParameter("Product_Id");
					String Category=request.getParameter("Category_MenWear");
					String Type=request.getParameter("Type_WomenWear");
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
					Women_Prdct ob= new Women_Prdct(ProductAddedOn, Product_Id, Category, Type, Brand_Name, Fittings, Price, About_The_Product, Header);
					int i=Model.Model_Women_Prdct.Insert(ob);
					
					System.out.println("Value of i is"+i);
					
				}
				catch (Exception e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}

}

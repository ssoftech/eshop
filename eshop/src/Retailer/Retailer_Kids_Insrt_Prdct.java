package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Retailer_Kids_Prdct;

@WebServlet("/Retailer_Kids_Insrt_Prdct")
public class Retailer_Kids_Insrt_Prdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			String ProductAddedOn = request.getParameter("ProductAddedOn");
			System.out.println(ProductAddedOn);
			String Product_Id = request.getParameter("Product_Id");
			System.out.println(Product_Id);
			String Retailer_Name = request.getParameter("Product_SoldBy");
			System.out.println(Retailer_Name);
			String Category = request.getParameter("Category_KidsWear");
			System.out.println(Category);
			String Type = request.getParameter("Type_KidsWear");
			System.out.println(Type);
			String Brand_Name = request.getParameter("BrandName");
			System.out.println(Brand_Name);
			String Fittings = request.getParameter("Fit");
			System.out.println(Fittings);
			Double Price = 0.00;
			int i = 0;

			try {
				Price = Double.parseDouble(request.getParameter("Price"));
				System.out.println(Price);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			String About_The_Product = request
					.getParameter("About_The_Product");
			String Header = request.getParameter("Header");
			
			if (ProductAddedOn != "" && Product_Id != "" && Retailer_Name != ""	&& Category != "" && Type != "" && Brand_Name != ""	&& Fittings != "" && Price != 0.00) {
				Retailer_Kids_Prdct obj = new Retailer_Kids_Prdct(ProductAddedOn, Product_Id, Retailer_Name, Category, Type, Brand_Name, Fittings, Price, About_The_Product, Header);
				i = Model.Model_Retailer_Kids_Prdct.Insert(obj);
				System.out.println("In if");
			} else {
				String mssg = "Row cannot be inserted.All fields must be filled";
				response.sendRedirect("Retailer_Kids_InsertPrdct.jsp?Mssg=" + mssg);
			} if (i == 1) {
				String message = "Product:" + "  " + Product_Id	+ "  added successfully";
				response.sendRedirect("Retailer_Kids_InsertPrdct.jsp?Mssg=" + message);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

package Men_Wear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.*;
import Model.Model_Cart;
/**
 * Servlet implementation class Delete_Cart
 */
@WebServlet("/Delete_Cart")
public class Delete_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Product_Id=request.getParameter("Product_Id");
		request.setAttribute("product_id", Product_Id);
		String Color=request.getParameter("Color");
		request.setAttribute("color", Color);
		System.out.println("Product_Id is"+Product_Id);
		System.out.println("Color is"+Color);
		HttpSession cart_sess=request.getSession();
		 String username = (String)cart_sess.getAttribute("Name");
		 String email=Model.Model_Cart.Email_Id(username);
		
		
		try {
			Connection con=Conct.conect();
			String sql="Delete from registered_cart where Product_Id=? And ColorName=? and Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, Product_Id);
			ps.setString(2, Color);
			ps.setString(3, email);
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				request.setAttribute("username",email);
				RequestDispatcher rd_cart=request.getRequestDispatcher("View_Cart11.jsp");
				rd_cart.forward(request, response);
			}
			else
			{
				System.out.println("Some thin occured.Please Try Again");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

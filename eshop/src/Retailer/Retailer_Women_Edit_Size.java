package Retailer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Conct;

@WebServlet("/Retailer_Women_Edit_Size")
public class Retailer_Women_Edit_Size extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String size=request.getParameter("Size");
		System.out.println("Size is"+size);
		String Product=request.getParameter("Product_Id");
		String sizeId=request.getParameter("SizeId");
		int Size_Id=Integer.parseInt(sizeId);
		String color=request.getParameter("Color");
		
		
		try {
			Connection con=Conct.conect();
			String sql="Update retailer_sizeinsrt_women set Size=? where Product_Id=? and SizeId=? and ColorName=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, size);
			ps.setString(2, Product);
			ps.setInt(3, Size_Id);
			ps.setString(4, color);
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				String mssg="Size Updated Successfully";
				response.sendRedirect("Retailer_Women_EditPrdct.jsp?Mssg="+mssg);
			}
			else
			{
				String mssg="Error on updating size.Please Try Another Time";
				response.sendRedirect("Retailer_Women_EditPrdct.jsp>Mssg="+mssg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

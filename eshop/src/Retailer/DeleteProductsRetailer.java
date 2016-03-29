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


@WebServlet("/DeleteProductsRetailer")
public class DeleteProductsRetailer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			String product_id=request.getParameter("Pid");
			
			Connection con=Conct.conect();
			String sql="Delete from retailer_productinsertmen where Product_Id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, product_id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				String mssg="Product Deleted Successfully";
				response.sendRedirect("Retailer_Men_DeletePrdct.jsp?Message="+mssg);
			}
			else
			{
				String mssg="Product cannot be deleted.Please Try Another";
				response.sendRedirect("Retailer_Men_DeletePrdct.jsp?Message="+mssg);
			}
			
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

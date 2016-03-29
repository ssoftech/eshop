package Men_Wear;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Conct;
import Bean.Men_Edit_Color;
import Model.Model_Men_Edit;


@WebServlet("/Admin_Women_Edit_ColorPrdct")
public class Admin_Women_Edit_ColorPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//EditColor
		try {
			
			String Product_Id=request.getParameter("Product_Id");
			System.out.println("product id "+Product_Id);
			String Color_id=request.getParameter("Color_Id");
			int id=Integer.parseInt(Color_id);
			System.out.println("Id is"+id);
			String colorname=request.getParameter("Color");
			System.out.println("colorname is"+colorname);
			String Qty=request.getParameter("Quantity");
			int Quantity=Integer.parseInt(Qty);
			
			Connection con=Conct.conect();
			String sql="Update admin_colorinsrt_women set ColorName=?, Quantity=? where ColorId=? And Product_Id=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, colorname);
			ps.setInt(2, Quantity);
			ps.setInt(3, id);
			ps.setString(4, Product_Id);
			
			int i=ps.executeUpdate();
			if(i>0)
			{
				int Qty2=0;
				String sql6="Select sum(Quantity) from admin_colorinsrt_women where Product_Id=?";
				PreparedStatement ps6=con.prepareStatement(sql6);
				ps6.setString(1, Product_Id);
				
				ResultSet rs6=ps6.executeQuery();
				if(rs6.next())
				{
					Qty2=rs6.getInt(1);
					String sql9="Update admin_totalqty_women set TotalQuantity=? where Product_Id=?";
					PreparedStatement ps9=con.prepareStatement(sql9);
					ps9.setInt(1,Qty2 );
					ps9.setString(2,Product_Id);
					int j=ps9.executeUpdate();
					
				}
				
				
				String mssg="Color/Quantity Updated Successfully";
				response.sendRedirect("Admin_Women_EditPrdct.jsp?Message="+mssg);
			}
			
			else
			{
				String mssg="Error occured please try another time";
				response.sendRedirect("Admin_Women_EditPrdct.jsp?Message="+mssg);
			}
			
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

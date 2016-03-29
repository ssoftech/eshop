package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Cart_Shopping;
import Bean.Conct;

public class Model_Order_Details 
{
 
	public static int Insert(Cart_Shopping obj, int Order_no)
	{
		int i=0;
		try {
			Connection con=Conct.conect();
			String sql="Insert into order_details(Order_No, Product_Id, BrandName, Quantity, Price)"
					+ "values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setInt(1, Order_no);
			ps.setString(2, obj.getProduct_Id());
			ps.setString(3,obj.getBrand());
			ps.setString(4, "Formals");
			ps.setInt(5, obj.getQuantity());
			ps.setDouble(6, obj.getPrice());
			
			i=ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
}

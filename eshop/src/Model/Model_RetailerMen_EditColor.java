package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Conct;
import Bean.Retailer_Men_Color;


public class Model_RetailerMen_EditColor 
{
	public static int Edit_Prdct_Color(Retailer_Men_Color obj)
	{
		int i=0;
		Connection con=Conct.conect();
		System.out.println("color "+obj.getColor_Id());
		String sql="Update retailer_colorinsertmen set  ColorName=?,Quantity=? where Quantity='2'";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getColor());
			ps.setInt(2, obj.getQuantity());
			i=ps.executeUpdate();
			System.out.println("i "+i);
			
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}

}

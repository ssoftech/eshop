package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Conct;
import Bean.Men_Delete;

public class Model_Men_Delete 
{

	public static int Delete_Prdct(Men_Delete obj)
	{
		int i=0;
		Connection con=Conct.conect();
		
		String sql="Delete from admin_productinsert_men where Product_Id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getProduct_Id());
			
			
			i=ps.executeUpdate();
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}
	
}

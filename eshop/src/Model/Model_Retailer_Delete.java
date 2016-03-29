package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Retailer_Register;

public class Model_Retailer_Delete 
{
   public static int Retailer_Delete(Retailer_Register ob)
   {
	   int i=0;
	   try {
		Connection con=Conct.conect();
		   String sql="Delete from retailer_register where  Email=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1, ob.getEmail());
		   i=ps.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return i;
   }
}

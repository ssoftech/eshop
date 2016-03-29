package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Otp;

public class Delete_Otp 
{

	public static int Delete_Otp_Adm(Otp ob)
	{
		int i=0;
		
		try {
			Connection con=Conct.conect();
			String sql="Delete from login_otp where Email_Id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getEmail());
			i=ps.executeUpdate();			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
}

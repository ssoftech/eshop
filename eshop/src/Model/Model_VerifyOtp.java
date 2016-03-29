package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Otp;

public class Model_VerifyOtp 
{

	public static String VerifyOtp(Otp obj)
	{
		String otp="";
		
		try {
			Connection con=Conct.conect();
			String sql="Select Otp from login_otp where Email_Id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getEmail());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				otp=rs.getString("Otp");
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return otp;
	}
}

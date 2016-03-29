package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Bean.Admin_Register;
import Bean.Conct;

public class Modin_Login_Admin 
{

	public static int Login_AdminCheck(Admin_Register obj)
	{
		int i=0;
		try {
			Connection con=Conct.conect();
			String sql="Select EmployeeId, Email, Password from admin_register where EmployeeId=? And Email=? AND Password=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getEmployeeId());
			ps.setString(2, obj.getEmail());
			ps.setString(3, obj.getPassword());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				i=1;
			}
			else
			{
				i=0;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return i;
	}
}

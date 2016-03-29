


package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Admin_Register;
import Bean.Conct;

public class Model_AdminRegister_Insert 
{
  
	public static int AdminRegister_Insert(Admin_Register obj)
	{
		int i=0;
		try
		{
			Connection con=Conct.conect();
			String sql="Insert into admin_register(EmployeeId,FirstName,LastName,Email,Password,PhoneNo,DateofBirth,Image) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, obj.getEmployeeId());
			ps.setString(2, obj.getFirstName());
			ps.setString(3, obj.getLastName());
			ps.setString(4,obj.getEmail());
			ps.setString(5, obj.getPassword());
			ps.setString(6, obj.getPhoneNo());
			ps.setString(7, obj.getDateOfBirth());
			ps.setBlob(8, obj.getImage());
			
			i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			
		}
		return i;
		
	}
}

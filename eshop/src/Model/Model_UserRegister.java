package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Bean.Conct;
import Bean.User_Register;

public class Model_UserRegister
{
 public static int User_Register_Insert(User_Register obj)
 {
	 int i=0;
	 try
		{
			Connection con=Conct.conect();
			String sql="Insert into user_register(FirstName,LastName,Email,Password,PhoneNo,State,City) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, obj.getFirstName());
			ps.setString(2, obj.getLastName());
			ps.setString(3,obj.getEmail());
			ps.setString(4, obj.getPassword());
			ps.setString(5, obj.getPhoneNo());
			ps.setString(6, obj.getState());
			ps.setString(7, obj.getCity());
			
			
			i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			
		}
	 
	 
	 return i;
 }
 
 public static int User_LoginVerify(User_Register obj)
 {
	 int i=0;
	 try
		{
		   String Email=obj.getEmail();
		   String Password=obj.getPassword();
		   
			Connection con=Conct.conect();
			String sql="Select Email, Password from user_register where Email=? And Password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Email );
			ps.setString(2, Password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				i=1;
			}
			
			
		}
		catch(Exception e)
		{
			
		}
	 
	 
	 return  i;
 }
}

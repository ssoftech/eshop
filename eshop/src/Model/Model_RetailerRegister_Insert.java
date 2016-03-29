package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Retailer_Register;
import Bean.Conct;

public class Model_RetailerRegister_Insert 
{
  
	public static int RetailerRegister_Insert(Retailer_Register obj)
	{
		int i=0;
		try
		{
			Connection con=Conct.conect();
			String sql="Insert into retailer_register(FirstName,LastName,Email,Password,PhoneNo,DateofBirth,State,City,Pincode, Address) values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, obj.getFirstName());
			ps.setString(2, obj.getLastName());
			ps.setString(3,obj.getEmail());
			ps.setString(4, obj.getPassword());
			ps.setString(5, obj.getPhoneNo());
			ps.setString(6, obj.getDOB());
			ps.setString(7, obj.getState());
			ps.setString(8, obj.getCity());
			ps.setString(9, obj.getPincode());
			ps.setString(10, obj.getAddress());
			
			i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			
		}
		return i;
		
	}
}

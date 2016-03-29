package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Retailer_Register;

public class Model_LoginVerify 
{
  public static int Login(Retailer_Register obj)
  {
	  int i=0;
	  try {
		Connection con=Conct.conect();
		  String sql="Select Email, Password, RetailerId from retailer_register where Email=? ";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1, obj.getEmail());
		  ResultSet rs=ps.executeQuery();
		  if(rs.next())
		  {
			  String email=rs.getString("Email");
			  String password=rs.getString("Password");
			  String retailer_id=rs.getString("RetailerId");
			  
			  if((email.equals(obj.getEmail())) && (password.equals(obj.getPassword())) && (retailer_id.equals(obj.getRetailer_Id())) )
			  {
				  i=1;
			  }
			  else
			  {
				  i=0;
			  }
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return i;
  }
  
  public static String Select_Username(String email)
  {
	  
	  String name="";
	  
	  try {
		Connection con=Conct.conect();
		  String sql="Select FirstName from retailer_register where Email=?";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1, email);
		  ResultSet rs=ps.executeQuery();
		  if(rs.next())
		  {
			  name=rs.getString("FirstName");
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  
	  return name;
	  
	  
	  
  }
}

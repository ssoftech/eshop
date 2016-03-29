package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Conct;

import Bean.User_Register;

public class View_User_Admin 
{
   public static ArrayList<User_Register>User_Admin()
   {
	   ArrayList<User_Register> arr= new ArrayList<User_Register>();
	   try {
		   User_Register obj=null;
		Connection con=Conct.conect();
		   String sql="Select * from  user_register ";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   int Id=rs.getInt("Id");
			   String FirstName=rs.getString("FirstName");
			   String LastName=rs.getString("LastName");
			   String Email=rs.getString("Email");
			   String PhoneNo=rs.getString("PhoneNo");
			   String State=rs.getString("State");
			   String City=rs.getString("City");
			   
			   obj= new User_Register(Id, FirstName, LastName, Email, PhoneNo, State, City);
			   arr.add(obj);
			   
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return arr;
   }
}

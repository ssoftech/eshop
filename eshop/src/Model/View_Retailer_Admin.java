package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Conct;

import Bean.Retailer_Register;

public class View_Retailer_Admin 
{
   public static ArrayList<Retailer_Register>Retailer_Admin()
   {
	   ArrayList<Retailer_Register> arr= new ArrayList<Retailer_Register>();
	   try {
		   Retailer_Register obj=null;
		Connection con=Conct.conect();
		   String sql="Select * from  retailer_register ";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   String FirstName=rs.getString("FirstName");
			   String LastName=rs.getString("LastName");
			   String Email=rs.getString("Email");
			   String PhoneNo=rs.getString("PhoneNo");
			   String State=rs.getString("State");
			   String City=rs.getString("City");
			   String AddProof=rs.getString("AddProof");
			   String IdProof=rs.getString("IdProof");
			   
			   obj= new Retailer_Register(FirstName, LastName, Email, PhoneNo, State, City,  AddProof, IdProof);
			   arr.add(obj);
			   
		   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return arr;
   }
}

package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Conct;
import Bean.Retailer_Men_Prdct;

public class Model_Retailers_Men_Prdct 
{
  public static ArrayList<Retailer_Men_Prdct> AllPrdcts(String email)
  {
	  ArrayList<Retailer_Men_Prdct> ar=null;
	try {
		ar = new ArrayList<Retailer_Men_Prdct>();
		  Connection con=Conct.conect();
		  String sql="Select a1.Product_Id from retailer_productinsertmen a1 inner join retailer_register a2 where a1.Retailer_Name=a2.FirstName and a2.Email=?";
		  PreparedStatement ps=con.prepareStatement(sql);
		  ps.setString(1, email);
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  Retailer_Men_Prdct obj=new Retailer_Men_Prdct();
			  obj.setProduct_Id(rs.getString(1));
			  ar.add(obj);
			  
		  }
		  
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  return ar;
  }
}

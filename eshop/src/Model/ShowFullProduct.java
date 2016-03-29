package Model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Conct;
import Bean.Men_Prdct;

public class ShowFullProduct 
{
   public static ArrayList<Men_Prdct> FullProductDetails(String category)
   {
	   ArrayList<Men_Prdct> arr=null;
	try {
		String Category=category;
		Men_Prdct obj=null;
		   arr = new ArrayList<Men_Prdct>();
		   Connection con=Conct.conect();
		   String sql="Select Product_Id, Category, Type, BrandName, Fittings, Price, About, Tagline from  admin_productinsert_men where Category=?";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1, Category);
		   ResultSet rs=ps.executeQuery();
		   while(rs.next())
		   {
			   String Product_id=rs.getString("Product_Id");
			   String Type=rs.getString("Type");
			   String BrandName=rs.getString("BrandName");
			   String Fittings=rs.getString("Fittings");
			   Double Price=rs.getDouble("Price");
			   String About=rs.getString("About");
			   String Tagline=rs.getString("Tagline");
			   
			   obj= new Men_Prdct(Product_id, Category, Type, BrandName, Fittings, Price, About, Tagline);
			   arr.add(obj);
			   
		   }
		   
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return arr;
	   
   }
}

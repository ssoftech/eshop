package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Bean.Conct;
import Bean.Retailer_Women_Image;


public class Model_Rtl_Women_ImageForEdit 
{
	public static ArrayList<Retailer_Women_Image>  ViewImageForEdit(String Filename,String Product_Id)
	  {
		  ArrayList<Retailer_Women_Image> arr=new ArrayList<Retailer_Women_Image>();
		  
		  try {
			Connection con=Conct.conect();
			  String sql="Select * from retailer_imageinsrt_women where Filename=? and Product_Id=?";
			  PreparedStatement ps=con.prepareStatement(sql);
			  ps.setString(1,Filename);
			  ps.setString(2,Product_Id);
			  ResultSet rs=ps.executeQuery();
			  if(rs.next())
			  {
				  Retailer_Women_Image obj= new Retailer_Women_Image();
				  obj.setProduct_Id(rs.getString("Product_Id"));
				  obj.setColor(rs.getString("ColorName"));
				  obj.setFilename(rs.getString("Filename"));
				  
				 arr.add(obj);
			  }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		  return arr;
		  
	  }
}

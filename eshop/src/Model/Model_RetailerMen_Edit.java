package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;





import Bean.Conct;
import Bean.Retailer_Edit;
import Bean.Retailer_Men_Image;

public class Model_RetailerMen_Edit
{

	public static int Edit_Prdct(Retailer_Edit obj)
	{
		int i=0;
		Connection con=Conct.conect();
		
		
		String sql="Update retailer_productinsertmen set ProductAddedOn=?, Retailer_Name=?, Type=?, BrandName=?,Fittings=?, Price=?, About=?,Tagline=? where Product_Id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getProductCreatedOn());
			ps.setString(2, obj.getRetailer_Name());
			ps.setString(3, obj.getType());
			ps.setString(4, obj.getBrand_Name());
			ps.setString(5, obj.getFittings());
			ps.setDouble(6, obj.getPrice());
			ps.setString(7, obj.getAbout_The_Product());
			ps.setString(8, obj.getHeader());
			ps.setString(9, obj.getProduct_Id());
			
			i=ps.executeUpdate();
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}
	
	
public static int Edit_Prdct_Image(Retailer_Men_Image ob) {
		
		int i=0;
        try
        {
        	String filename=ob.getFilename_new();
        	Connection con2=Conct.conect();
        	String sql2="Select count(Filename) from retailer_imageinsrt_men where Product_Id=? and ColorName=? and Filename=?";
        	int count=0;
        	PreparedStatement ps2=con2.prepareStatement(sql2);
        	ps2.setString(1, ob.getProduct_Id());
        	ps2.setString(2, ob.getColor());
        	ps2.setString(3, filename);
        	ResultSet rs2=ps2.executeQuery();
        	if(rs2.next())
        	{
        		count=rs2.getInt(1);
        	}
        	if(count==0)
        	{
            Connection con=Conct.conect();
        	String sql="Update retailer_imageinsrt_men set Image=?, Filename=? where Product_Id=? and ColorName=? and Filename=?";
        	PreparedStatement ps=con.prepareStatement(sql);
        	ps.setBlob(1, ob.getImage());
        	ps.setString(2, ob.getFilename_new());
        	ps.setString(3, ob.getProduct_Id());
        	ps.setString(4, ob.getColor());
        	ps.setString(5, ob.getFilename());
        	
        	i=ps.executeUpdate();
		} 
        	 else
             {
             	return  i=-1;
             	
             }
        	
       }
       
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
}
}

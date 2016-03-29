package Model;
import java.sql.Connection;
import java.sql.PreparedStatement;




import Bean.*;

public class Model_Men_Edit 
{

	public static int Edit_Prdct(Men_Edit obj)
	{
		int i=0;
		Connection con=Conct.conect();
		
		String sql="Update admin_productinsert_men set ProductAddedOn=?, Type=?, BrandName=?, Fittings=?, Price=?, About=?, Tagline=? where Product_Id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getProductCreatedOn());
			ps.setString(2, obj.getType());
			ps.setString(3, obj.getBrand_Name());
			ps.setString(4, obj.getFittings());
			ps.setDouble(5, obj.getPrice());
			ps.setString(6, obj.getAbout_The_Product());
			ps.setString(7, obj.getHeader());
			ps.setString(8, obj.getProduct_Id());
			
			i=ps.executeUpdate();
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}
	
	public static int Edit_Prdct_Color(Men_Edit_Color obj)
	{
		int i=0;
		Connection con=Conct.conect();
		
		String sql="Update admin_colorinsrt_men set  ColorName1=?, ColorName2=?, ColorName3=?, ColorName4=?, ColorName5=?, Quantity1=?, Quantity2=?, Quantity3=?, Quantity4=?, Quantity5=? where Product_Id=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getColorName1());
			ps.setString(2, obj.getColorName2());
			ps.setString(3, obj.getColorName3());
			ps.setString(4, obj.getColorName4());
			ps.setString(5, obj.getColorName5());
			ps.setInt(6, obj.getQuantity1());
			ps.setInt(7, obj.getQuantity2());
			ps.setInt(8, obj.getQuantity3());
			ps.setInt(9, obj.getQuantity4());
			ps.setInt(10, obj.getQuantity5());
			ps.setString(11, obj.getProduct_Id());
			i=ps.executeUpdate();
			
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}

	public static int Edit_Prdct_Image(Men_Image ob) {
		
		int i=0;
        try
        {
        	Connection con=Conct.conect();
        	String sql="Update admin_imageinsrt_men set Image=?, Filename=? where Product_Id=? and ColorName=? and Filename=?";
        	PreparedStatement ps=con.prepareStatement(sql);
        	ps.setBlob(1, ob.getImage());
        	ps.setString(2, ob.getFilename_new());
        	ps.setString(3, ob.getProduct_Id());
        	ps.setString(4, ob.getColor());
        	ps.setString(5, ob.getFilename());
        	
        	i=ps.executeUpdate();
		} 
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
			return i;	
		
	}
	
	
	
	
	
}

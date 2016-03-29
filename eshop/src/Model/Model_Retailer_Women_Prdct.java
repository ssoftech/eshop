package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Retailer_Women_Image;
import Bean.Retailer_Women_Prdct;
import Bean.Retailer_Women_Color;

public class Model_Retailer_Women_Prdct {

	// Insert Product
	public static int Insert(Retailer_Women_Prdct obj) {
		Connection con = null;
		PreparedStatement ps = null;
		int i = 0;

		try {
			con = Conct.conect();

			String sql = "Insert into retailer_productinsertwomen(ProductAddedOn,Product_Id,Retailer_Name,Category,Type,BrandName,Fittings,Price,About,Tagline) "
					+ "values(?,?,?,?,?,?,?,?,?,?)";

			ps = con.prepareStatement(sql);

			ps.setString(1, obj.getProductCreatedOn());
			ps.setString(2, obj.getProduct_Id());
			ps.setString(3, obj.getRetailer_Name());
			ps.setString(4, obj.getCategory());
			ps.setString(5, obj.getType());
			ps.setString(6, obj.getBrand_Name());
			ps.setString(7, obj.getFittings());
			ps.setDouble(8, obj.getPrice());
			ps.setString(9, obj.getAbout_The_Product());
			ps.setString(10, obj.getHeader());

			i = ps.executeUpdate();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	// Insert Color & Quantity
	public static int Insert_Color(Retailer_Women_Color obj, String color) {
		String user_color = obj.getColor();
		Connection con = null;
		PreparedStatement ps = null;
		int i = 0;

		try {
			con = Conct.conect();

			String sql3 = "Select ColorName from retailer_colorinsertwomen where Product_Id=? and ColorName=?";
			ps = con.prepareStatement(sql3);
			ps.setString(1, obj.getProduct_Id());
			ps.setString(2, obj.getColor());
			ResultSet rs3 = ps.executeQuery();
			while (rs3.next()) {
				color = rs3.getString("ColorName");
				if (color.equals(user_color)) {
					i = -1;
					break;
				}
			}
			if (i == -1) {
				return i;
			} else {
				String sql2 = "Select count(Product_Id) from retailer_colorinsertwomen where Product_Id=?";
				 ps=con.prepareStatement(sql2);
				 ps.setString(1,obj.getProduct_Id());
				 ResultSet rs2=ps.executeQuery();
				 if(rs2.next()){
					 int count = rs2.getInt(1);
					 if(count<5){
						 String sql="Select Product_Id from retailer_colorinsertwomen where Product_Id=? and ColorName=?";
						 ps=con.prepareStatement(sql);
						 ps.setString(1,obj.getProduct_Id());
						 ps.setString(2, color );
						 
						 ResultSet rs=ps.executeQuery();
						 if(rs.next()==false)
						 {
							 String sql1="Insert into retailer_colorinsertwomen(Product_Id, ColorName, Quantity) values (?,?,?)";
					         ps=con.prepareStatement(sql1);
					         ps.setString(1, obj.getProduct_Id());
					         ps.setString(2, obj.getColor());
					         ps.setInt(3, obj.getQuantity());
				             i=ps.executeUpdate();
				             
				             System.out.println("Value of i"+i);
				    
						 }
					 }
					 else{
						 return i=-2;
					 }
				 }
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	//INSERT TOTAL QUANTITY
	public static int InsertTotalQuantity(String Product_Id) {
		int i = 0;
		try {
			int count = 0;
			Connection con = Conct.conect();
			String sql = "Select count(Product_Id) from retailer_totalqtywomen where Product_Id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, Product_Id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}

			int sum = 0;
			String sql3 = "Select sum(Quantity) from retailer_colorinsertwomen where Product_Id=?";
			PreparedStatement ps2 = con.prepareStatement(sql3);
			ps2.setString(1, Product_Id);
			ResultSet rs2 = ps2.executeQuery();
			if (rs2.next()) {
				sum = rs2.getInt(1);
			}

			int k = 0;
			if (count == 0) {

				String sql4 = "Insert into retailer_totalqtywomen(Product_Id,TotalQuantity) values(?,?)";
				PreparedStatement ps4 = con.prepareStatement(sql4);
				ps4.setString(1, Product_Id);
				ps4.setInt(2, sum);

				k = ps4.executeUpdate();

				if (k == 1) {
					System.out.println("In if loop");
				}

			} else {
				String sql4 = "Update  retailer_totalqtywomen set TotalQuantity=?  where Product_Id=?";
				PreparedStatement ps4 = con.prepareStatement(sql4);
				ps4.setInt(1, sum);
				ps4.setString(2, Product_Id);

				k = ps4.executeUpdate();

				if (k == 1) {
					System.out.println("In else loop");
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return i;

	}
	
	public static int Select_Color(String Color, String Product_Id)
	{
		int color_id=0;
		try {
			
			Connection con=Conct.conect();
			String sql="Select ColorId from retailer_colorinsertwomen where ColorName=? And Product_Id=? ";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Color);
			ps.setString(2, Product_Id);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				color_id=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return color_id;
		
	}
	
	
	//INSERT IMAGE
	public static int Insert_Image(Retailer_Women_Image obj){
		Connection con = null;
		PreparedStatement ps = null;
		PreparedStatement ps1 = null;
		PreparedStatement ps2 = null;
		PreparedStatement ps3 = null;
		String product = obj.getProduct_Id();
		
		String color = obj.getColor();
		
		String filename = obj.getFilename();
		
		String file = "";

		int i = 0;
		int j = 0;
		
		try {
			con = Conct.conect();
			int count = 0;

			String sql3 = "Select Filename from retailer_imageinsrt_women where Product_Id=? and ColorName=?";
			ps3 = con.prepareStatement(sql3);
			ps3.setString(1, product);
			ps3.setString(2, color);
			
			ResultSet rs3 = ps3.executeQuery();
			
			while(rs3.next()) {
				
				file = rs3.getString("Filename");
				if (file.equals(filename)) {
					i = -1;
					break;
				}
			}
				if (i == -1) {
					return i;
				}
				else {
					System.out.println("Else part in model");
					String sql2 = "Select count(Product_Id) from retailer_imageinsrt_women where Product_Id=? and ColorName=?";
					ps2 = con.prepareStatement(sql2);
					ps2.setString(1, product);
					ps2.setString(2, obj.getColor());
					ResultSet rs2 = ps2.executeQuery();
					if(rs2.next()) {
						String sql1 = "Insert into retailer_imageinsrt_women(Product_Id,ColorName,Image,Filename,ColorId)"
								+ "values(?,?,?,?,?)";
						ps1 = con.prepareStatement(sql1);
						
						ps1.setString(1, obj.getProduct_Id());
						ps1.setString(2, obj.getColor());
						ps1.setBlob(3, obj.getImage());
						ps1.setString(4, obj.getFilename());
						ps1.setInt(5, obj.getColorId());
						
						j = ps1.executeUpdate();
					} else {
						return j = -2;
					}
				} 
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	public static int Insert_Size(Retailer_Women_Image obj) {
		int i = 0;
		String size = "";
		String user_size = obj.getSize();
		System.out.println(user_size+"ye uthaya.");
		
		try {
			Connection con = Conct.conect();
			int count = 0;
			
			String sql2 = "Select Size from retailer_sizeinsrt_women where Product_Id=? and ColorName=?";
			PreparedStatement ps2 = con.prepareStatement(sql2);
			ps2 = con.prepareStatement(sql2);
			ps2.setString(1, obj.getProduct_Id());
			ps2.setString(2, obj.getColor());
			ResultSet rs2 = ps2.executeQuery();
			while(rs2.next()) {
				size = rs2.getString("Size");
				System.out.println("Database size is"+size);
				if(size.equals(user_size)) {
					i = -1;
					break;
				}
			}
			
			if(i == -1) {
				return i;
			} else {
				String sql4 = "Select count(Product_Id) from retailer_colorinsertwomen where Product_Id=? and ColorName=?";
				PreparedStatement ps4 = con.prepareStatement(sql4);
				ps4 = con.prepareStatement(sql4);
				ps4.setString(1, obj.getProduct_Id());
				ps4.setString(2, obj.getColor());
				ResultSet rs4 = ps4.executeQuery();
				if(rs4.next()) {
					count = rs4.getInt(1);
					if(count < 5) {
						String sql = "Insert into retailer_sizeinsrt_women(Product_Id, ColorName, Size,ColorId) values(?,?,?,?)";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1, obj.getProduct_Id());
						ps.setString(2, obj.getColor());
						ps.setString(3, obj.getSize());
						ps.setInt(4, obj.getColorId());
						
						i = ps.executeUpdate();
					} else {
						return i = -2;
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
}

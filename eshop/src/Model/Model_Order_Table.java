package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Cart_Shopping;
import Bean.Conct;
import Bean.Order_Table;

public class Model_Order_Table
{
	public static int Insert(Order_Table obj)
	{
		int i=0;
		try {
			Connection con=Conct.conect();
			String sql="Insert into order_table(Order_No,Customer_Name,Email,PhoneNo, Order_Date, Order_Amount,Status)"
					+ "values(?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, obj.getOrder_No());
			ps.setString(2, obj.getCustomer_Name());
			ps.setString(3, obj.getEmail());
			ps.setString(4, obj.getPhoneNo());
			ps.setString(5, obj.getOrder_Date());
			ps.setDouble(6, obj.getOrder_Amount());
			ps.setString(7, "Processing");
			
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
	
	
	public static int Cart_Select(String email, int order_no, String color )
	{
		int i=0;
		try {
			Connection con=Conct.conect();

				String Product_Id="";
				String BrandName="";
				Double Total_Price=0.00;
				int Quantity=0;
				String sql4="Select Product_Id,BrandName,Total_Price,Quantity from registered_cart where Email=? ";
				PreparedStatement ps4=con.prepareStatement(sql4);
				ps4.setString(1, email);
				ResultSet rs4=ps4.executeQuery();
				while(rs4.next())
				{
					int k=0;
					Product_Id=rs4.getString("Product_Id");
					BrandName=rs4.getString("BrandName");
					Total_Price=rs4.getDouble("Total_Price");
					Quantity=rs4.getInt("Quantity");
					
					String sql6="Insert into order_details(Order_No,Product_Id,BrandName,Category,Quantity,Price)"
							+ "values(?,?,?,?,?,?)";
					PreparedStatement ps6=con.prepareStatement(sql6);
					ps6.setInt(1, order_no );
					ps6.setString(2,Product_Id );
					ps6.setString(3,BrandName );
					ps6.setString(4,color );
					ps6.setInt(5,Quantity );
					ps6.setDouble(6,Total_Price );
					
					k=ps6.executeUpdate();
					
					int Qty=0;
					String sql12="Select Quantity from retailer_colorinsertmen where Product_Id=? And ColorName=?";
					PreparedStatement ps12=con.prepareStatement(sql12);
					ps12.setString(1, Product_Id);
					ps12.setString(2, color);
					ResultSet rs=ps12.executeQuery();
					if(rs.next())
					{
						Qty=rs.getInt(1);
					}
					int m=0;
					Qty=Qty-Quantity;
					String sql13="Update retailer_colorinsertmen set Quantity=? where Product_Id=? And ColorName=? ";
					PreparedStatement ps13=con.prepareStatement(sql13);
					ps13.setInt(1, Qty);
					ps13.setString(2,Product_Id);
					ps13.setString(3, color);
					
					m=ps13.executeUpdate();
					
					int TotQty=0;
					String sql16="Select TotalQuantity from retailer_totalqty where Product_Id=?";
					PreparedStatement ps16=con.prepareStatement(sql16);
					ps16.setString(1, Product_Id);
					ResultSet rs16=ps16.executeQuery();
					if(rs16.next())
					{
						TotQty=rs16.getInt(1);
					}
					TotQty=TotQty-Quantity;
					
					String sql14="Update retailer_totalqty set TotalQuantity=? where Product_Id=?  ";
					PreparedStatement ps14=con.prepareStatement(sql14);
					ps14.setInt(1, TotQty);
					ps14.setString(2,Product_Id);
					
					m=ps14.executeUpdate();
					
					if(Qty<5)
					{
						
						String sql19="Select ColorName from lowstockprdcts where Product_Id=? ";
						PreparedStatement ps19=con.prepareStatement(sql19);
						ps19.setString(1, Product_Id);
						ResultSet rs19=ps19.executeQuery();
						if(rs19.next())
						{
							String sql20="Update lowstockprdcts set Quantity=? where Product_Id=? And ColorName=?";
							PreparedStatement ps20=con.prepareStatement(sql20);
							ps20.setInt(1, Qty);
							ps20.setString(2, Product_Id);
							ps20.setString(3, color);
							
							m=ps20.executeUpdate();
						}
						
						else
						{
						String sql18="Insert into LowStockPrdcts(Product_Id,ColorName,Quantity) values(?,?,?)";
						PreparedStatement ps18=con.prepareStatement(sql18);
						ps18.setString(1, Product_Id);
						ps18.setString(2,color);
						ps18.setInt(3, Qty);
						
						m=ps18.executeUpdate();
						}
					}
				}
				
				
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return i;
	}
	
	public static int Cart_Select_Women(String email, int order_no, String color )
	{
		int i=0;
		try {
			Connection con=Conct.conect();

				String Product_Id="";
				String BrandName="";
				Double Total_Price=0.00;
				int Quantity=0;
				String sql4="Select Product_Id,BrandName,Total_Price,Quantity from registered_cart where Email=? ";
				PreparedStatement ps4=con.prepareStatement(sql4);
				ps4.setString(1, email);
				ResultSet rs4=ps4.executeQuery();
				while(rs4.next())
				{
					int k=0;
					Product_Id=rs4.getString("Product_Id");
					BrandName=rs4.getString("BrandName");
					Total_Price=rs4.getDouble("Total_Price");
					Quantity=rs4.getInt("Quantity");
					
					String sql6="Insert into order_details(Order_No,Product_Id,BrandName,Category,Quantity,Price)"
							+ "values(?,?,?,?,?,?)";
					PreparedStatement ps6=con.prepareStatement(sql6);
					ps6.setInt(1, order_no );
					ps6.setString(2,Product_Id );
					ps6.setString(3,BrandName );
					ps6.setString(4,color );
					ps6.setInt(5,Quantity );
					ps6.setDouble(6,Total_Price );
					
					k=ps6.executeUpdate();
					
					int Qty=0;
					String sql12="Select Quantity from retailer_colorinsertwomen where Product_Id=? And ColorName=?";
					PreparedStatement ps12=con.prepareStatement(sql12);
					ps12.setString(1, Product_Id);
					ps12.setString(2, color);
					ResultSet rs=ps12.executeQuery();
					if(rs.next())
					{
						Qty=rs.getInt(1);
					}
					int m=0;
					Qty=Qty-Quantity;
					String sql13="Update retailer_colorinsertwomen set Quantity=? where Product_Id=? And ColorName=? ";
					PreparedStatement ps13=con.prepareStatement(sql13);
					ps13.setInt(1, Qty);
					ps13.setString(2,Product_Id);
					ps13.setString(3, color);
					
					m=ps13.executeUpdate();
					
					int TotQty=0;
					String sql16="Select TotalQuantity from retailer_totalqtywomen where Product_Id=?";
					PreparedStatement ps16=con.prepareStatement(sql16);
					ps16.setString(1, Product_Id);
					ResultSet rs16=ps16.executeQuery();
					if(rs16.next())
					{
						TotQty=rs16.getInt(1);
					}
					TotQty=TotQty-Quantity;
					
					String sql14="Update retailer_totalqtywomen set TotalQuantity=? where Product_Id=?  ";
					PreparedStatement ps14=con.prepareStatement(sql14);
					ps14.setInt(1, TotQty);
					ps14.setString(2,Product_Id);
					
					m=ps14.executeUpdate();
					
					if(Qty<5)
					{
						
						String sql19="Select ColorName from lowstockprdcts where Product_Id=? ";
						PreparedStatement ps19=con.prepareStatement(sql19);
						ps19.setString(1, Product_Id);
						ResultSet rs19=ps19.executeQuery();
						if(rs19.next())
						{
							String sql20="Update lowstockprdcts set Quantity=? where Product_Id=? And ColorName=?";
							PreparedStatement ps20=con.prepareStatement(sql20);
							ps20.setInt(1, Qty);
							ps20.setString(2, Product_Id);
							ps20.setString(3, color);
							
							m=ps20.executeUpdate();
						}
						
						else
						{
						String sql18="Insert into lowstockprdcts(Product_Id,ColorName,Quantity) values(?,?,?)";
						PreparedStatement ps18=con.prepareStatement(sql18);
						ps18.setString(1, Product_Id);
						ps18.setString(2,color);
						ps18.setInt(3, Qty);
						
						m=ps18.executeUpdate();
						}
					}
				}
				
				
				
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		return i;
	}
	public static int Invoice_Generate(double invoice_generate, int order_no, String current_date)
	{
		int i=0;
		try {
			Connection con=Conct.conect();
			String sql="Insert into invoice(InvoiceNo,Order_No,Invoice_Date) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setDouble(1, invoice_generate);
			ps.setInt(2,order_no );
			ps.setString(3, current_date);
			
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
	}
	
}

 
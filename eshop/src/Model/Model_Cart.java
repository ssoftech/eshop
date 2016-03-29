package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import Bean.Cart_Shopping;
import Bean.Conct;
import Bean.Men_Prdct;
import Bean.User_Register;

public class Model_Cart 
{

	
	public static Cart_Shopping Cart_ProductViewById(String pid)
	{ 
		int i=0;
		Cart_Shopping bean=null;
		try
		{
			
			Connection con=Conct.conect();
			String sql4="Select Product_Id from  retailer_productinsertmen where Product_Id=?";
			PreparedStatement ps4=con.prepareStatement(sql4);
			ps4.setString(1, pid);
			ResultSet rs4=ps4.executeQuery();
			if(rs4.next())
			{
			String sql="Select BrandName, Price, Tagline from retailer_productinsertmen   where Product_Id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,pid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				String BrandName=rs.getString("BrandName");
				Double Price=rs.getDouble("Price");
				String Tagline=rs.getString("Tagline");
				
				
				bean= new Cart_Shopping(pid, BrandName, Tagline, Price, Price);
				
				
			}
		}
			
				String sql5="Select Product_Id from retailer_productinsertwomen where Product_Id=?";
				PreparedStatement ps5=con.prepareStatement(sql5);
				ps5.setString(1, pid);
				ResultSet rs5=ps5.executeQuery();
				if(rs5.next())
				{
					String sql="Select BrandName, Price, Tagline from retailer_productinsertwomen where Product_Id=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,pid);
					ResultSet rs=ps.executeQuery();
					if(rs.next())
					{
						String BrandName=rs.getString("BrandName");
						Double Price=rs.getDouble("Price");
						String Tagline=rs.getString("Tagline");
						
						
						bean= new Cart_Shopping(pid, BrandName, Tagline, Price, Price);
						
						
					}
				}
			
				String sql6="Select Product_Id from retailer_productinsertkids where Product_Id=?";
				PreparedStatement ps6=con.prepareStatement(sql6);
				ps6.setString(1, pid);
				ResultSet rs6=ps6.executeQuery();
				if(rs6.next())
				{
					String sql="Select BrandName, Price, Tagline from retailer_productinsertkids where Product_Id=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,pid);
					ResultSet rs=ps.executeQuery();
					if(rs.next())
					{
						String BrandName=rs.getString("BrandName");
						Double Price=rs.getDouble("Price");
						String Tagline=rs.getString("Tagline");
						
						
						bean= new Cart_Shopping(pid, BrandName, Tagline, Price, Price);
						
						
					}
				}
		
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bean;
	}
	
	
	public static int Insert_Cart(Cart_Shopping obj, String Email, String PhoneNo) {
		Connection con = null;
		PreparedStatement ps = null;
		int i = 0, count = 0;
		try {
			Calendar now = Calendar.getInstance();
			String current_date =((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));

			// add days to current date using Calendar.add method
			now.add(Calendar.DATE, 5);

			String delivery_date = ((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));

			con = Conct.conect();

			String sql = "Insert into registered_cart(CartAddedOn,Product_Id, BrandName, Price, Total_Price, Tagline, ColorName, Quantity, Delivery_Date, Email, PhoneNo)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);

			ps.setString(1,current_date );
			ps.setString(2,obj.getProduct_Id());
			ps.setString(3,obj.getBrand());
			ps.setDouble(4,obj.getPrice());
			ps.setDouble(5,obj.getTotal_Price());
			ps.setString(6,obj.getTagline());
			System.out.println("color "+obj.getColor());
			ps.setString(7,obj.getColor());
			ps.setDouble(8,1);
			ps.setString(9,delivery_date);
			ps.setString(10,Email);
			ps.setString(11,PhoneNo);

			i = ps.executeUpdate();

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return i;

	}
	
	public static String User_Id(String first_name)
	 {
		String PhoneNo = null;
		 try
			{
			 
			 
				Connection con=Conct.conect();
				String sql="Select PhoneNo from user_register where FirstName=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,first_name);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					PhoneNo=rs.getString(1);
				}
				
				
			}
			catch(Exception e)
			{
				
			}
		return PhoneNo;
	 }
	public static String Email_Id(String first_name)
	 {
		String email = null;
		 try
			{
			 
			 
				Connection con=Conct.conect();
				String sql="Select Email from user_register where FirstName=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,first_name);
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					email=rs.getString("Email");
				}
			}
			catch(Exception e)
			{
				
			}

		return email;
	 }
	
	public static ArrayList<Cart_Shopping> View_cart(String email)
	{
		
		ArrayList<Cart_Shopping> ar=new ArrayList<Cart_Shopping>();
		 try
			{
				Connection con=Conct.conect();
				String sql="Select Product_Id, BrandName, Price, Total_Price, Tagline, ColorName, Quantity, Delivery_Date, Email from registered_cart where Email=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,email);
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					String Product_id=rs.getString(1);
					String BrandName=rs.getString(2);
					Double Price=rs.getDouble(3);
					Double Total_Price=rs.getDouble(4);
					String Tagline=rs.getString(5);
					String ColorName=rs.getString(6);
					int Quantity=rs.getInt(7);
					String Delivery_Date=rs.getString(8);
					String Email=rs.getString(9);
					Cart_Shopping obj4=new Cart_Shopping(Product_id,BrandName, Tagline, ColorName, Price, Quantity, Delivery_Date, Email, Total_Price);
					ar.add(obj4);
					
				}
			}
			catch(Exception e)
			{
				
			}
		 
		return ar;
		
	}
	public static boolean Product_id_availabilty(String Product_id,String email, String color)
	{
		boolean status=false;
		try
		{
			Connection con=Conct.conect();
			String sql="Select Product_Id from registered_cart where Email=? and Product_Id=? and ColorName=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,Product_id);
			ps.setString(3,color);
			ResultSet rs=ps.executeQuery();
			status=rs.next();

			
		}
		catch(Exception e)
		{
			
		}
		return status;
		
	}
public static int Update_Quantity_TotalPrice(Cart_Shopping obj)
{
	
	Connection con = null;
	PreparedStatement ps = null;
	int i = 0;
	try {
		
		
		con = Conct.conect();

		String sql = "update registered_cart set Total_Price=?, Quantity=? where Product_Id=?";
				;
		ps = con.prepareStatement(sql);

		ps.setDouble(1,obj.getTotal_Price());
		ps.setDouble(2,obj.getQuantity());
		ps.setString(3,obj.getProduct_Id());

		i = ps.executeUpdate();

	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
public static double Registered_all_total(String email)
{
	
	double total_price=0;
	try {
		Connection con=Conct.conect();
		String sql="select Total_Price from registered_cart where Email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			
			total_price+=rs.getDouble("Total_Price");
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return total_price;

	
}

public static String Product_IdCheck(String Product_Id)
{
	
         String check="";
         
         Connection con=Conct.conect();
         try {
			 String sql="Select Product_Id from retailer_productinsertmen where Product_Id=?";
			 PreparedStatement ps=con.prepareStatement(sql);
			 ps.setString(1, Product_Id);
			 ResultSet rs=ps.executeQuery();
			 if(rs.next())
			 {
				 check="Men";
			 }
			 
			String sql2="Select Product_Id from retailer_productinsertwomen where Product_Id=?";
			PreparedStatement ps2=con.prepareStatement(sql2);
			ps2.setString(1, Product_Id);
			ResultSet rs2=ps2.executeQuery();
			if(rs2.next())
			{
				check="Women";
			}
			String sql12="Select Product_Id from retailer_productinsertkids where Product_Id=?";
			PreparedStatement ps12=con.prepareStatement(sql12);
			ps12.setString(1, Product_Id);
			ResultSet rs12=ps12.executeQuery();
			if(rs12.next())
			{
				check="Kids";
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
         
         return check;

}

public static int QuantityCheck(String Product_Id,String check,String color)
{
	int qty=0;
	Connection con=Conct.conect();
	
	if(check.equals("Men"))
	{
		try {
			String sql="Select Quantity from retailer_colorinsertmen where Product_Id=? And ColorName=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, Product_Id);
			ps.setString(2, color);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				qty=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	else if(check.equals("Women"))
	{
		
		try {
			String sql="Select Quantity from retailer_colorinsertwomen where Product_Id=? And ColorName=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, Product_Id);
			ps.setString(2, color);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				qty=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	else
	{
		
		try {
			String sql="Select Quantity from retailer_colorinsertkids where Product_Id=? And ColorName=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, Product_Id);
			ps.setString(2, color);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				qty=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	return qty;


}
}

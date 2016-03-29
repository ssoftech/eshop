package dbConnection;

import java.sql.*;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class Connect_Listener implements ServletContextListener {

	String url = "jdbc:mysql://localhost/";
	String url1 = "jdbc:mysql://localhost/OnlineShopping";
	String username = "root";
	String password = "root";

	public void contextDestroyed(ServletContextEvent arg0) {

	}

	public void contextInitialized(ServletContextEvent arg0) {
		Connection con = null;
		Statement st = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url, username, password);
			st = con.createStatement();

			try {
				String sql = "Create database IF NOT EXISTS OnlineShopping";
				int i = st.executeUpdate(sql);

				if (i > 0) // Database Creation returns 1 on success
				{

					System.out.println("Database Successfully Created");

				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
			
			
			
			// ADMIN TABLES

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_Register (EmployeeId varchar(10) primary key, FirstName varchar(102), LastName varchar(102),"
						+ " Email varchar(102), Password varchar(102), PhoneNo varchar(14), DateofBirth varchar(102), Image LONGBLOB  )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Login_Otp(Email_Id varchar(200) primary key, Otp varchar(40) not null) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ProductInsert_Men (ProductAddedOn varchar(50),Product_Id varchar(50) primary key, Category varchar(50) not null,"
						+ "Type varchar(50) not null, BrandName varchar(50) not null, Fittings varchar(50)not null, Price double(10,2)not null,"
						+ " About varchar(200) not null,Tagline varchar(20) not null )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ColorInsrt_Men (ColorId int(10) not null AUTO_INCREMENT,Product_Id varchar(10) ,ColorName varchar(50), Quantity int(10), "
						+ "primary key (ColorId),foreign key (Product_Id) references admin_productinsert_men(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ImageInsrt_Men ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) ,"
						+ "foreign key (Product_Id) references admin_productinsert_men(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS admin_sizeinsrt_men(Product_Id varchar(10), ColorName varchar(40), Size varchar(40) ,"
						+ "foreign key (Product_Id) references admin_productinsert_men(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ImageInsrt_Men ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) ,"
						+ "foreign key (Product_Id) references admin_productinsert_men(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS admin_totalqty (Product_Id varchar(102) not null , TotalQuantity int not null, foreign key (Product_Id) references Admin_ColorInsrt_Men(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			//ADMIN WOMEN TABLES
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ProductInsert_Women (ProductAddedOn varchar(50),Product_Id varchar(50) primary key, Category varchar(50) not null,"
						+ "Type varchar(50) not null, BrandName varchar(50) not null, Fittings varchar(50)not null, Price double(10,2)not null,"
						+ " About varchar(200) not null,Tagline varchar(20) not null )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS admin_colorinsrt_women (ColorId int(10) not null AUTO_INCREMENT,Product_Id varchar(10) ,ColorName varchar(50), Quantity int(10), "
						+ "primary key(ColorId),foreign key (Product_Id) references Admin_ProductInsert_Women(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS admin_totalqty_women (Product_Id varchar(102) not null , TotalQuantity int not null, foreign key (Product_Id) references Admin_ColorInsrt_Women(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Admin_ImageInsrt_Women ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) ,"
						+ "foreign key (Product_Id) references admin_productinsert_women(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS admin_sizeinsrt_women(Product_Id varchar(10), ColorName varchar(40), Size varchar(40) ,"
						+ "foreign key (Product_Id) references admin_productinsert_women(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			// RETAILER TABLES

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_register (FirstName varchar(102) not null, LastName varchar(102) not null, Email varchar(102) not null , PhoneNo varchar(20) , RetailerId varchar(50), Password varchar(70), DOB varchar(10) not null,"
						+ "OfficeDetails varchar(250) not null, State varchar(102) not null, City varchar(80) not null, Address varchar(250) not null, Pincode varchar(6) not null, AddProof varchar(50) not null,"
						+ "IdProof varchar(50) not null, primary key(Email) )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Pending_Retls_Approval(Id Int not null auto_increment, FirstName varchar(102), LastName varchar(102), Email varchar(102), PhoneNo varchar(102),"
						+ "Status varchar(102),foreign key (Email) references retailer_register(Email) on delete cascade, primary key(Id))";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_productinsertmen(ProductAddedOn varchar(50),Retailer_Name varchar(200) , Product_Id varchar(50) primary key, Category varchar(50) not null,"
						+ "Type varchar(50) not null, BrandName varchar(50) not null, Fittings varchar(50)not null, Price double(10,2)not null,"
						+ " About varchar(200) not null,Tagline varchar(20) not null) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_productinsertwomen(ProductAddedOn varchar(50),Retailer_Name varchar(200) , Product_Id varchar(50) not null, Category varchar(50) not null,"
						+ "Type varchar(50) not null, BrandName varchar(50) not null, Fittings varchar(50)not null, Price double(10,2)not null,"
						+ " About varchar(200) not null,Tagline varchar(20) not null,Primary Key(Product_Id)) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_productinsertkids(ProductAddedOn varchar(50),Retailer_Name varchar(200) , Product_Id varchar(50) not null, Category varchar(50) not null,"
						+ "Type varchar(50) not null, BrandName varchar(50) not null, Fittings varchar(50)not null, Price double(10,2)not null,"
						+ " About varchar(200) not null,Tagline varchar(20) not null,Primary Key(Product_Id)) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_colorinsertmen(ColorId int(10) not null AUTO_INCREMENT,Product_Id varchar(10) ,ColorName varchar(50), Quantity int(9), "
						+ "primary key (ColorId), foreign key (Product_Id) references retailer_productinsertmen(Product_Id) on delete cascade) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_colorinsertwomen(ColorId int(10) not null AUTO_INCREMENT,Product_Id varchar(10) ,ColorName varchar(50), Quantity int(9), "
						+ "primary key (ColorId), foreign key (Product_Id) references retailer_productinsertwomen(Product_Id) on delete cascade) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_colorinsertkids(ColorId int(10) not null AUTO_INCREMENT,Product_Id varchar(10) ,ColorName varchar(50), Quantity int(9), "
						+ "primary key (ColorId), foreign key (Product_Id) references retailer_productinsertkids(Product_Id) on delete cascade) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_ImageInsrt_Men ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) , ColorId int(10) not null,"
						+ "foreign key (Product_Id) references retailer_productinsertmen(Product_Id) on delete cascade, foreign key(ColorId) references retailer_colorinsertmen(ColorId) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_ImageInsrt_Women ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) , ColorId int(10) not null,"
						+ "foreign key (Product_Id) references retailer_productinsertwomen(Product_Id) on delete cascade, foreign key(ColorId) references retailer_colorinsertwomen(ColorId) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_ImageInsrt_kids ( Product_Id varchar(10)  ,"
						+ "ColorName varchar(13), Image LONGBLOB,"
						+ " Filename varchar(200) ,"
						+ "foreign key (Product_Id) references retailer_productinsertkids(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_SizeInsrt_Men (SizeId int not null auto_increment,Product_Id varchar(10), ColorName varchar(40), Size varchar(40) , ColorId int(10) not null,"
						+ "foreign key (Product_Id) references retailer_productinsertmen(Product_Id) on delete cascade, primary key(SizeId), foreign key(ColorId) references retailer_colorinsertmen(ColorId) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_SizeInsrt_Women (SizeId int not null auto_increment,Product_Id varchar(10), ColorName varchar(40), Size varchar(40) , ColorId int(10) not null,"
						+ "foreign key (Product_Id) references retailer_productinsertwomen(Product_Id) on delete cascade, primary key(SizeId), foreign key(ColorId) references retailer_colorinsertwomen(ColorId) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Retailer_SizeInsrt_kids (SizeId int not null auto_increment,Product_Id varchar(10), ColorName varchar(40), Size varchar(40) ,"
						+ "foreign key (Product_Id) references retailer_productinsertkids(Product_Id) on delete cascade, primary key(SizeId))";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_totalqty (Product_Id varchar(102) not null , TotalQuantity int not null, foreign key (Product_Id) references retailer_colorinsertmen(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_totalqtywomen (Product_Id varchar(102) not null , TotalQuantity int not null, foreign key (Product_Id) references retailer_colorinsertwomen(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS retailer_totalqtykids (Product_Id varchar(102) not null , TotalQuantity int not null, foreign key (Product_Id) references retailer_colorinsertkids(Product_Id) on delete cascade)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			
			
			
			
			// USER TABLES

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS user_register (Id int not null auto_increment, FirstName varchar(102) not null, LastName varchar(102) not null, Email varchar(102) not null, Password varchar(80) not null, PhoneNo varchar(20) not null,"
						+ "State varchar(102) not null, City varchar(80) not null, primary key(Id) )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Registered_Cart (CartId int not null auto_increment primary key, CartAddedOn varchar(50),"
						+ " Product_Id varchar(50) not null, BrandName varchar(50) not null, Price double(10,2) not null, Total_Price double(10,2) not null,"
						+ " Tagline varchar(200) not null, ColorName varchar(30) not null,"
						+ " Quantity int not null, Delivery_Date varchar(45) not null, Email varchar(102), PhoneNo varchar(20), Image LongBlob)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Order_Table(Order_No int primary key, Customer_Name varchar(100) not null, Email varchar(100) not null, PhoneNo varchar(20) not null, Order_Date varchar(40) not null, Order_Amount double(10,2), Status varchar(102)) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Order_Details(Order_No int, Product_Id varchar(100) not null, BrandName varchar(100) not null, Category varchar(20) not null, Quantity int not null, Price double(10,2) not null,"
						+ "foreign key (Order_No) references Order_Table(Order_No) on delete cascade) ";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try
			{

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS User_Feedback (Full_Name varchar(90), Email varchar(102) primary key, Feedback varchar(102), Product_Id varchar(10), Date varchar(20))";

				st = con.createStatement();
				st.executeUpdate(sql);

			}
			catch (Exception e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS LowStockPrdcts (Product_Id varchar(102) not null , ColorName varchar(102) not null, Quantity int not null)";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			// INVOICE TABLE
			
			try {

				con = DriverManager.getConnection(url1, username, password);
				String sql = "Create table IF NOT EXISTS Invoice (InvoiceNo bigint not null primary key, Order_No int not null, Invoice_Date varchar(102) not null,foreign key (Order_No) references Order_Table(Order_No) on delete cascade )";

				st = con.createStatement();
				st.executeUpdate(sql);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

			// END OF MAIN TRY-BLOCK

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}

	}

}

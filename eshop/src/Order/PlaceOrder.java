package Order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Cart_Shopping;
import Bean.Conct;
import Bean.Order_Table;


@WebServlet("/PlaceOrder")
public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try
		{
			String color=request.getParameter("color");
			String tot_price=request.getParameter("totalprice");
			Double tot=Double.parseDouble(tot_price);
			String Product_Id=request.getParameter("Pid");
			int Qty=0;
			String email="";
			HttpSession sees= request.getSession();
			String name=(String)sees.getAttribute("Name");
			
			Connection con=Conct.conect();
			
			String sql5="Select Gender from retailer_productinsertmen where Product_Id=?";
			PreparedStatement ps5=con.prepareStatement(sql5);
			ps5.setString(1, Product_Id);
			ResultSet rs5=ps5.executeQuery();
			if(rs5.next())
			{
			String sql4="Select Quantity from retailer_colorinsertmen where Product_Id=? And ColorName=?";
			PreparedStatement ps4=con.prepareStatement(sql4);
			ps4.setString(1, Product_Id);
			ps4.setString(2, color);
			ResultSet rs4=ps4.executeQuery();
			if(rs4.next())
			{
				Qty=rs4.getInt(1);
			}
			
			if(name!=null && Qty!=0)
			{
				if(tot!=0.00)
				{
					
					String phoneno="";
					Calendar now = Calendar.getInstance();
					String current_date =((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));
					int order_no=(int)(Math.random()*100000);
					try {
						
						
						
						
						String Sql="Select Email, PhoneNo from user_register where FirstName=? ";
						PreparedStatement ps=con.prepareStatement(Sql);
						ps.setString(1, name);
						ResultSet rs=ps.executeQuery();
						if(rs.next())
						{
							email=rs.getString("Email");
							phoneno=rs.getString("PhoneNo");
						}
						
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					Order_Table obj= new Order_Table(order_no, name, email, phoneno, current_date, tot);
					int i=Model.Model_Order_Table.Insert(obj);
					System.out.println("i is"+i);
					
					
					int j=Model.Model_Order_Table.Cart_Select(email,order_no,color);
					
					long Invoice_No=(long)(Math.random()*1000000000);
					
					int l=Model.Model_Order_Table.Invoice_Generate( Invoice_No, order_no, current_date);
					
					/*RequestDispatcher rd_cart=request.getRequestDispatcher("Invoice_sample");
					rd_cart.forward(request, response);*/
					
					response.sendRedirect("Invoice_sample?Invoice_No="+Invoice_No);
		
				}
				
				
			}
			
			
			else
			{
				String mssg="Sry for the inconvinience.Prdouct is out of stock.Please try another";
				response.sendRedirect("menshirts.jsp?Message="+mssg);
			}
		}
			else
			{
				String sql6="Select Gender from retailer_productinsertwomen where Product_Id=?";
				PreparedStatement ps6=con.prepareStatement(sql6);
				ps6.setString(1, Product_Id);
				ResultSet rs6=ps6.executeQuery();
				if(rs6.next())
				{
					String sql4="Select Quantity from retailer_colorinsertwomen where Product_Id=? And ColorName=?";
					PreparedStatement ps4=con.prepareStatement(sql4);
					ps4.setString(1, Product_Id);
					ps4.setString(2, color);
					ResultSet rs4=ps4.executeQuery();
					if(rs4.next())
					{
						Qty=rs4.getInt(1);
					}
					
					if(name!=null && Qty!=0)
					{
						if(tot!=0.00)
						{
							
							String phoneno="";
							Calendar now = Calendar.getInstance();
							String current_date =((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));
							int order_no=(int)(Math.random()*100000);
							try {
								
								
								
								
								String Sql="Select Email, PhoneNo from user_register where FirstName=? ";
								PreparedStatement ps=con.prepareStatement(Sql);
								ps.setString(1, name);
								ResultSet rs=ps.executeQuery();
								if(rs.next())
								{
									email=rs.getString("Email");
									phoneno=rs.getString("PhoneNo");
								}
								
								
							} catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							Order_Table obj= new Order_Table(order_no, name, email, phoneno, current_date, tot);
							int i=Model.Model_Order_Table.Insert(obj);
							System.out.println("i is"+i);
							
							
							int j=Model.Model_Order_Table.Cart_Select_Women(email,order_no,color);
							
							long Invoice_No=(long)(Math.random()*1000000000);
							
							int l=Model.Model_Order_Table.Invoice_Generate( Invoice_No, order_no, current_date);
							
							/*RequestDispatcher rd_cart=request.getRequestDispatcher("Invoice_sample");
							rd_cart.forward(request, response);*/
							
							response.sendRedirect("Invoice_sample?Invoice_No="+Invoice_No);
				
						}
						
						
					}
					
					
					else
					{
						String mssg="Sry for the inconvinience.Prdouct is out of stock.Please try another";
						response.sendRedirect("menshirts.jsp?Message="+mssg);
					}
				}
			}
			/*String sql9="Delete from registered_cart where Email=?";
			PreparedStatement ps9=con.prepareStatement(sql9);
			ps9.setString(1, email);
			
			int k=ps9.executeUpdate();*/
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

				

		}

	}



package Retailer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Conct;


@WebServlet("/Retailer_Women_Edit_Color")
public class Retailer_Women_Edit_Color extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Color Edit
				try {
					String Product_Id=request.getParameter("Product_Id");
					String Color=request.getParameter("Color");
					String Quantity=request.getParameter("Quantity");
					int Qty=Integer.parseInt(Quantity);
					String Color_Id=request.getParameter("Color_Id");
					int color_id=Integer.parseInt(Color_Id);
					
					Connection con=Conct.conect();
					String sql="Update retailer_colorinsertwomen set ColorName=?, Quantity=? where ColorId=? And Product_Id=? ";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1, Color);
					ps.setInt(2, Qty);
					ps.setInt(3, color_id);
					ps.setString(4, Product_Id);
					
					int i=ps.executeUpdate();
					if(i>0)
					{
						
						String sql11="Update retailer_imageinsrt_women set ColorName=? where ColorId=? And Product_Id=?";
						PreparedStatement ps11=con.prepareStatement(sql11);
						ps11.setString(1, Color);
						ps11.setInt(2, color_id);
						ps11.setString(3, Product_Id);
						
						i=ps11.executeUpdate();
						
						String sql18="Update retailer_sizeinsrt_women set ColorName=? where ColorId=? And Product_Id=?";
						PreparedStatement ps18=con.prepareStatement(sql18);
						ps18.setString(1, Color);
						ps18.setInt(2, color_id);
						ps18.setString(3, Product_Id);
						
						i=ps18.executeUpdate();
						int Qty2=0;
						String sql6="Select sum(Quantity) from retailer_colorinsertwomen where Product_Id=?";
						PreparedStatement ps6=con.prepareStatement(sql6);
						ps6.setString(1, Product_Id);
						
						ResultSet rs6=ps6.executeQuery();
						if(rs6.next())
						{
							Qty2=rs6.getInt(1);
							String sql9="Update retailer_totalqtywomen set TotalQuantity=? where Product_Id=?";
							PreparedStatement ps9=con.prepareStatement(sql9);
							ps9.setInt(1,Qty2 );
							ps9.setString(2,Product_Id);
							int j=ps9.executeUpdate();
							
						}
						
						
						String mssg="Color/Quantity Updated Successfully";
						response.sendRedirect("Retailer_Women_EditPrdct.jsp?Message="+mssg);
					}
					
					else
					{
						String mssg="Error occured please try another time";
						response.sendRedirect("Retailer_Women_EditPrdct.jsp>Message="+mssg);
					}
					
				} 
				catch (Exception e) 
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	}

}

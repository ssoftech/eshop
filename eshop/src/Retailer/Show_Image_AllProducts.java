package Retailer;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Conct;

@WebServlet("/Show_Image_AllProducts")
public class Show_Image_AllProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Productid=request.getParameter("Product_Id");
        System.out.println("Product_Id="+Productid);
		Connection con=Conct.conect();

		String sql="Select Product_Id from retailer_imageinsrt_men where Product_Id=?";
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Productid);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				String sql2="Select Image from retailer_imageinsrt_men where Product_Id=?";
				PreparedStatement ps2=con.prepareStatement(sql2);
				ps2.setString(1, Productid);
				ResultSet rs2=ps2.executeQuery();
				if(rs2.next())
				{
				// response.setContentType("image/gif");
				Blob image=rs2.getBlob("Image");
				byte[] b=image.getBytes(1, (int)image.length());
				ServletOutputStream out=response.getOutputStream();
				out.write(b);
				out.flush();
				out.close();
				}

			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		String sql4="Select Product_Id from retailer_imageinsrt_women where Product_Id=?";
		try
		{
			PreparedStatement ps4=con.prepareStatement(sql4);
			ps4.setString(1, Productid);
			ResultSet rs4=ps4.executeQuery();
			if(rs4.next())
			{
				String sql6="Select Image from retailer_imageinsrt_women where Product_Id=?";
				PreparedStatement ps6=con.prepareStatement(sql6);
				ps6.setString(1, Productid);
				ResultSet rs6=ps6.executeQuery();
				if(rs6.next())
				{
					Blob image=rs6.getBlob("Image");
					byte[] b=image.getBytes(1, (int)image.length());
					ServletOutputStream out=response.getOutputStream();
					out.write(b);
					out.flush();
					out.close();
					
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}

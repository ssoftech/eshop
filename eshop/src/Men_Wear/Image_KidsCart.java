package Men_Wear;

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


@WebServlet("/Image_KidsCart")
public class Image_KidsCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
	    	String pid = request.getParameter("pid");
	        System.out.println("Product_Id from kids cart is"+pid);
	    	String filename=request.getParameter("file");
	    	System.out.println("Filename is"+filename);
	    	String color=request.getParameter("colr");
	    	System.out.println("Colorname is"+color);
	    	Connection con=Conct.conect();
	    	String sql="Select Image from retailer_imageinsrt_kids  where Product_Id=? and Filename=? and ColorName=?";
	    			
	    	PreparedStatement ps=con.prepareStatement(sql);
	    	ps.setString(1,pid);
	    	ps.setString(2, filename);
            ps.setString(3, color);
	    	
	    	ResultSet rs=ps.executeQuery();
	    	if(rs.next())		
			{
				
					// response.setContentType("image/gif");
					Blob image=rs.getBlob(1);
					byte[] b=image.getBytes(1, (int)image.length());
					ServletOutputStream out=response.getOutputStream();
					out.write(b);
					out.flush();
					out.close();

			}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

}

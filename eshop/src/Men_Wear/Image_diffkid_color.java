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


@WebServlet("/Image_diffkid_color")
public class Image_diffkid_color extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
	    	String pid = request.getParameter("pid");
	    	String ColorName = request.getParameter("ColorName");
	    	
	    	Connection con=Conct.conect();
	    	String sql="Select Image from retailer_imageinsrt_kids  where Product_Id=? and ColorName=?";
	    			
	    	PreparedStatement ps=con.prepareStatement(sql);
	    	ps.setString(1,pid);
	    	ps.setString(2,ColorName);
	    	
	    	
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

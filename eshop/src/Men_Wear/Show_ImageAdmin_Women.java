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


@WebServlet("/Show_ImageAdmin_Women")
public class Show_ImageAdmin_Women extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Filename=request.getParameter("FileName");
        System.out.println("Filename="+Filename);
		Connection con=Conct.conect();

		String sql="Select Image from admin_imageinsrt_women where Filename=?";
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Filename);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				// response.setContentType("image/gif");
				Blob image=rs.getBlob("Image");
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

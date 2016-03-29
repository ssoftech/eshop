package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Conct;


@WebServlet("/UserDeleteByAdmin")
public class UserDeleteByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			int id=Integer.parseInt(request.getParameter("Id"));
			Connection con=Conct.conect();
			String sql="Delete from user_register where Id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				String mssg="User deleted from database successfully";
				response.sendRedirect("View_User_AdminForDelete.jsp?Message"+mssg);
			}
			else
			{
				String mssg="Some error occured while deleting user.Please Try another";
				response.sendRedirect("View_User_AdminForDelete.jsp?Message="+mssg);
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

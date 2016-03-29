package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.*;

@WebServlet("/Delete_Otp")
public class Delete_Otp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("email");
		System.out.println("email "+email);
		Otp obj=new Otp(email);
		int i=Model.Delete_Otp.Delete_Otp_Adm(obj);
		
		if(i==1)
		{
		//	response.sendRedirect("Login_Admin.jsp");
		}
		
	}

}

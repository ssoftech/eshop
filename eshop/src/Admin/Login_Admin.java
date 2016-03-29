package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Admin_Register;



@WebServlet("/Login_Admin")
public class Login_Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Email=request.getParameter("email");
		String Password=request.getParameter("password");
		String EmployeeId=request.getParameter("empid");
		
		Admin_Register obj=new Admin_Register(EmployeeId, Email, Password);
		int i=Model.Modin_Login_Admin.Login_AdminCheck(obj);
		if(i==1)
		{
			Admin_Register ob=new Admin_Register(Email);
			int j=Model.Login_OTP.SendEmail(ob);
			if(j==1)
			{
				int count=0;
				HttpSession sees=request.getSession();
				sees.setAttribute("Empid", EmployeeId);
				response.sendRedirect("Login_OTP.jsp?EmployeeId="+EmployeeId+"&Email_id="+Email+"&count="+count);
			}
			else
			{
				String mssg="Error occured please request another OTP";
				response.sendRedirect("Login_Admin.jsp?Message="+mssg);
			}
			
			//response.sendRedirect("Admin_Profile.jsp?EmployeeId="+EmployeeId);
		}
		else
		{
			String mssg="Login credentials are incorrect. Please enter details correctly";
			response.sendRedirect("Login_Admin.jsp?Message="+mssg);
		}
	}

}

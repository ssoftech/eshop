package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Retailer_Register;


@WebServlet("/Login_Retailer")
public class Login_Retailer extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String Email=request.getParameter("email");
		System.out.println("Email is"+Email);
		String password=request.getParameter("password");
		System.out.println("Password is"+password);
		String retailer_id=request.getParameter("empid");
		System.out.println("Retailer_Id is"+retailer_id);
		
		if(Email!="" && password!="" && retailer_id!="")
		{
			Retailer_Register obj=new Retailer_Register(Email, password, retailer_id);
			int i=Model.Model_LoginVerify.Login(obj);
			HttpSession sees=request.getSession();
			
			if(i==1)
			{
				sees.setAttribute("Email",Email );
				response.sendRedirect("Retailer_profile.jsp");
			}
			else
			{
				String mssg="Login credentials are incorrect.Please try another";
				response.sendRedirect("Login_Retailer.jsp?Message="+mssg);
			}
		}
	}

}

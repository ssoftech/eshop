package User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.User_Register;


@WebServlet("/Login_VerifyUser")
public class Login_VerifyUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Email=request.getParameter("usermail");
		System.out.println("Email is"+Email);
		String Password=request.getParameter("password");
		System.out.println("Password is"+Password);
		
		User_Register obj=new User_Register(Email, Password);
		int i=Model.Model_UserRegister.User_LoginVerify(obj);
		System.out.println("Value of i is"+i);
		if(i==1)
		{
			HttpSession sees=request.getSession();
			sees.setAttribute("email",Email );
			response.sendRedirect("index.jsp");
		}
		else
		{
			String mssg="Your Login Credentials Are Incorrect.Try it correctly";
			response.sendRedirect("index.jsp?Message"+mssg);
		}
	}

}

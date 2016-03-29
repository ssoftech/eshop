package Admin;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Bean.Admin_Register;
import Model.Model_AdminRegister_Insert;



@WebServlet("/Register_Admin")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Register_Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String EmployeeId=request.getParameter("employeeid");
		String FirstName=request.getParameter("uname");
		String LastName=request.getParameter("lname");
		String Email=request.getParameter("email");
		String Password=request.getParameter("pass");
		String PhoneNo=request.getParameter("phoneno");
		
		String DateofBirth=request.getParameter("dateofbirth");
		Part Image=request.getPart("image");
		InputStream is=Image.getInputStream();
		
		Admin_Register obj=new  Admin_Register(EmployeeId, FirstName, LastName, Email, Password, PhoneNo, DateofBirth, is);
		int i=Model.Model_AdminRegister_Insert.AdminRegister_Insert(obj);
		
		
		if(i==1)
		{
			String mssg="Admin register successfully";
			response.sendRedirect("Register_Admin.jsp?Message="+mssg);
		}
		else
		{
			String mssg="Admin cannot be registered because of inappropriate data.Please try another time";
			response.sendRedirect("Register_Admin.jsp?Message="+mssg);
		}
	}

}

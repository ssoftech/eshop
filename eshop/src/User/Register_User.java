package User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User_Register;


@WebServlet("/Register_User")
public class Register_User extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String FirstName=request.getParameter("uname");
		String LastName=request.getParameter("lname");
		String Email=request.getParameter("email");
		String Password=request.getParameter("pass");
		String PhoneNo=request.getParameter("phoneno");
        String State=request.getParameter("State");
        String City=request.getParameter("City");
        
        if((FirstName!=null)&&(LastName!=null)&&(Email!=null)&&(Password!=null)&&(PhoneNo!=null)&&(State!=null)&&(City!=null))
        {
            User_Register obj=new User_Register(FirstName, LastName, Email, Password, PhoneNo, State, City);
        	int i=Model.Model_UserRegister.User_Register_Insert(obj);
        	
        	if(i==1)
        	{
        		String mssg="Retailer successfully registered";
    			response.sendRedirect("Register_User.jsp?Message="+mssg);
        	}
        	else
        	{
    			String mssg="Retailer cannot be registered because of invalid data. Please try again.";
    			response.sendRedirect("Register_User.jsp?Message="+mssg);
    		}
          }
        else
        {
        	String mssg="Fill all fields to register successfully";
			response.sendRedirect("Register_User.jsp?Message="+mssg);
        }
     
       
     
	}

}

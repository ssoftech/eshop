package Admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Conct;
import Bean.Otp;


@WebServlet("/Otp_Verify")
public class Otp_Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String employee_id=request.getParameter("empid");
	    String email_id=request.getParameter("email");
	    String otp_user=request.getParameter("Otp");
	    int  count=Integer.parseInt(request.getParameter("count"));
	    System.out.println("User Otp "+otp_user);
	    String fname="";
	    String lname="";
	    String name="";
	     // Getting name for session
	    try {
			Connection con=Conct.conect();
			String sql="Select FirstName,LastName from admin_register where Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email_id);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				fname=rs.getString("FirstName");
				lname=rs.getNString("LastName");
			}
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    name=fname+""+lname;
	    Otp obj=new Otp(email_id);
	    String otp=Model.Model_VerifyOtp.VerifyOtp(obj);
	    System.out.println("Database Otp "+otp);
	    if(otp_user.equals(otp))
	    {
	    	HttpSession sees=request.getSession();
	    	sees.setAttribute("Username",name);
	    	
	    	response.sendRedirect("Admin_Profile.jsp?Empid="+employee_id);
	    	
	    }
	    else
	    {
	    	count++;
	    	response.sendRedirect("Login_OTP.jsp?count="+count+"&EmployeeId="+employee_id+"&Email_id="+email_id);
	    }
	}

}

package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Retailer_Register;



@WebServlet("/Register_Retailer")
public class Register_Retailer extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NumberFormatException
    {
		
		String FirstName=request.getParameter("uname");
		String LastName=request.getParameter("lname");
		String Email=request.getParameter("email");
		String PhoneNo=request.getParameter("phoneno");
		String DOB=request.getParameter("dateofbirth");
		String OfficeDetails=request.getParameter("OffDetails");
		String State=request.getParameter("State");
		String City=request.getParameter("City");
		String Address=request.getParameter("Address1")+request.getParameter("Address2");
		String Pincode=request.getParameter("pincode");
		String AddProof=request.getParameter("AddProof");
		String IdProof=request.getParameter("IDProof");
		
	    Retailer_Register obj= new Retailer_Register(FirstName, LastName, Email, PhoneNo, DOB, OfficeDetails, State, City, Address, Pincode, AddProof, IdProof);
	    int i=Model.Model_Retailer_Register.Insert(obj);
	    
	    if(i==1)
	    {
	    	String mssg="Your details have been inserted successfully. On approval by the Admin you Login Credentials Will be sent to your registered email";
	    	response.sendRedirect("index.jsp?Message="+mssg);
	    }

	    else
	    {
	    	
	    }
    }
}

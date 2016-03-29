package User_Feedback;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User_Feedback;


@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	  
		String name=request.getParameter("Name");
		String email=request.getParameter("usermailid");
		String feedback=request.getParameter("feedback");
		String date=request.getParameter("Date");
		String product_Id=request.getParameter("product_id");
		
		String color=request.getParameter("colorname");
		
		Double price=Double.parseDouble(request.getParameter("price"));
		String category=request.getParameter("category"); 
		String filename=request.getParameter("filename");
		
		
		User_Feedback obj=new User_Feedback(name, email, feedback, date, product_Id);
		int i=Model.Model_UserFeedback.Feedback(obj);
		
		if(i==1)
		{
			String mssg="Thank you for your review";
			response.sendRedirect("MenShirtsRed1.jsp?Pid="+product_Id+"&Category="+category+"&Price="+price+"&Colorname="+color+"&Filename="+filename+"&Message="+mssg);
		}
	}

}

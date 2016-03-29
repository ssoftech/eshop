package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Retailer_Register;
import Retailer.Register_Retailer;


@WebServlet("/RetailerDeleteByAdmin")
public class RetailerDeleteByAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("Id");
		
		Retailer_Register ob= new Retailer_Register(email);
		int i=Model.Model_Retailer_Delete.Retailer_Delete(ob);
		
		if(i==1)
		{
			String mssg="Retailer Details Have Been Deleted Successfully";
			response.sendRedirect("View_Retailer_AdminForDelete.jsp?Message="+mssg);
		}
		else
		{
			String mssg="Retailer Details Cannot Be Deleted.Please Try Another Time";
			response.sendRedirect("View_Retailer_AdminForDelete.jsp?Message="+mssg);
		}
		
	}

}

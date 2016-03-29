package Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Update_Retailer_Approval")
public class Update_Retailer_Approval extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String email=request.getParameter("Email");
		String status=request.getParameter("Status");
		int i=Model.Model_Update_RetailerApproval.Update(email,status);
		
		if(i==1)
		{
			String mssg="Retailer Status Updated Successfully";
			response.sendRedirect("Pending_RetailerApproval.jsp?Message="+mssg);
		}
	}

}

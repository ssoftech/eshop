package Men_Wear;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Men_Delete;
import Model.Model_Men_Edit;

/**
 * Servlet implementation class Admin_DeletePrdct_Men
 */
@WebServlet("/Admin_DeletePrdct_Men")
public class Admin_DeletePrdct_Men extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String Product_Id=request.getParameter("ProductId");
		
		Men_Delete obj=new Men_Delete(Product_Id);
		int i=Model.Model_Men_Delete.Delete_Prdct(obj);
		if(i>=1)
		{
			String mssg="Row successfully deleted";
			response.sendRedirect("Admin_Men_DeletePrdct.jsp?Mssg="+mssg);
		}
		
	}

}

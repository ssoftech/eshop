package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AA
 */
@WebServlet("/AA")
public class AA extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String Product_Id=request.getParameter("Product_Id");
		String Color=request.getParameter("Color");
		String Quantity=request.getParameter("Quantity");
		String Color_Id=request.getParameter("Color_Id");
		
		System.out.print(Color+"  "+Quantity+"  "+Color_Id);
	}

}

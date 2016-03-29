package Men_Wear;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Cart_Color")
public class Cart_Color extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int i=0;
		String product_id=request.getParameter("product_id");
		request.setAttribute("product_id", product_id);
		String color=request.getParameter("colour");
		request.setAttribute("color",color);
		//Creating session
		HttpSession cart_sess=request.getSession();
		String username = (String)cart_sess.getAttribute("Name");

		if(username!=null)
		{
			RequestDispatcher rd_cart=request.getRequestDispatcher("Registered_Cart");
			rd_cart.forward(request, response);

		}
		else
		{

			RequestDispatcher rd_cart=request.getRequestDispatcher("Session_Cart");
			rd_cart.forward(request, response);
		}

	}

}

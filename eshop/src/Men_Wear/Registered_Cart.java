package Men_Wear;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Cart_Shopping;
import Model.Model_Cart;

@WebServlet("/Registered_Cart")
public class Registered_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=0;
		//String product_id=request.getParameter("product_id");
		//String colors=request.getParameter("color");
		
		String product_id=(String)request.getAttribute("product_id");
		String colors=(String)request.getAttribute("color");
		String filename=(String)request.getAttribute("filename");
		Cart_Shopping cart_bean=null;
		//Creating session
		HttpSession cart_sess=request.getSession();
	    String username = (String)cart_sess.getAttribute("Name");
	    String email=Model.Model_Cart.Email_Id(username);
	    int flag=0;
	    if(email!=null)
		{
	    	boolean status=Model.Model_Cart.Product_id_availabilty(product_id,email,colors);
		   if(status)
		   {
			   flag=1;
		   }
		   if(flag==0)
		   {
			Cart_Shopping cart_bean12=new Cart_Shopping();
			cart_bean12.setProduct_Id(product_id);
			cart_bean=Model.Model_Cart.Cart_ProductViewById(product_id);
			cart_bean.setColor(colors);
			cart_bean.setProduct_Id(product_id);
		    cart_bean12.setFilename(filename);
		
			
                String PhoneNo=Model_Cart.User_Id(email);
				
				 i=Model_Cart.Insert_Cart(cart_bean,email,PhoneNo);
		   }
				
				//request.setAttribute("username",email);
				request.setAttribute("file", filename);
				RequestDispatcher rd_cart=request.getRequestDispatcher("View_Cart11.jsp");
				rd_cart.forward(request, response);
			
			
			
		}
	}
}
	
	
	
	



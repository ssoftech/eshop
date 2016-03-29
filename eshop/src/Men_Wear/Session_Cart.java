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


@WebServlet("/Session_Cart")
public class Session_Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=0;
		String product_id=(String)request.getAttribute("product_id");
		String color=(String)request.getAttribute("color");
		System.out.println("------------");
		System.out.println("pid "+product_id);
		Cart_Shopping cart_bean=null;
		//Creating session
		HttpSession cart_sess=request.getSession();
		ArrayList<Cart_Shopping> show_cart=(ArrayList<Cart_Shopping>)cart_sess.getAttribute("cc");
		
		
		
		if(show_cart==null)
		{
			
			show_cart=new ArrayList<Cart_Shopping>();
			Cart_Shopping cart_bean12=new Cart_Shopping();
			cart_bean12.setProduct_Id(product_id);
			cart_bean=Model.Model_Cart.Cart_ProductViewById(product_id);
			cart_bean.setColor(color);
			cart_bean.setProduct_Id(product_id);
		
			show_cart.add(cart_bean);
			
			request.setAttribute("cc",show_cart);
		
			RequestDispatcher rd_cart=request.getRequestDispatcher("ViewCart1.jsp");
			rd_cart.forward(request, response);

		}
		else
		{

			int flag=0;
			Iterator<Cart_Shopping> it=show_cart.iterator();
			while(it.hasNext())
			{
				Cart_Shopping ob=it.next();
				System.out.println("bean "+ob.getProduct_Id());
				if(product_id.equals(ob.getProduct_Id()))
				{
					flag=1;
					break;
				}
				
			}
			if(flag==0)
			{
				
				Cart_Shopping cart_bean12=new Cart_Shopping();
				cart_bean12.setProduct_Id(product_id);
				cart_bean=Model.Model_Cart.Cart_ProductViewById(product_id);
				cart_bean.setColor(color);
				cart_bean.setProduct_Id(product_id);
				show_cart.add(cart_bean);
			}
			request.setAttribute("cc",show_cart);
			
			RequestDispatcher rd_cart=request.getRequestDispatcher("ViewCart1.jsp");
			rd_cart.forward(request, response);
							
			
		}
		
		}
	

}

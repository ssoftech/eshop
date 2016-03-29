package Men_Wear;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Men_Edit_Color;
import Model.Model_Men_Edit;


@WebServlet("/Admin_Men_Edit_ColorPrdct")
public class Admin_Men_Edit_ColorPrdct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		//Color Edit
		try {

			String Color1=request.getParameter("Color1");
            int Quantity1=Integer.parseInt(request.getParameter("Quantity1"));
			
			String Color2=request.getParameter("Color2");
			int Quantity2=Integer.parseInt(request.getParameter("Quantity2"));
			String Color3=request.getParameter("Color3");
			int Quantity3=Integer.parseInt(request.getParameter("Quantity3"));
			
			String Color4=request.getParameter("Color4");
			int Quantity4=Integer.parseInt(request.getParameter("Quantity4"));
			String Color5=request.getParameter("Color5");
			int Quantity5=Integer.parseInt(request.getParameter("Quantity5"));
			
			String Product_Id=request.getParameter("Product_Id_Color");
			 
			  System.out.println("1111");
			Men_Edit_Color obj=new Men_Edit_Color(Product_Id, Color1, Color2, Color3, Color4, Color5, Quantity1, Quantity2, Quantity3, Quantity4, Quantity5);
			 System.out.println("2222");
			int i=Model_Men_Edit.Edit_Prdct_Color(obj);
			System.out.println("3333  "+i);
			if(i==1)
			{
			   response.sendRedirect("Admin_Men_EditPrdct.jsp");
			}
			
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

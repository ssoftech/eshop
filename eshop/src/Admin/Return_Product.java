package Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Return_Products;

@WebServlet("/Return_Product")
public class Return_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String pid=request.getParameter("pid");
		String orderno=request.getParameter("orderno");
		String name=request.getParameter("Name");
		String email=request.getParameter("usermailid");
		String return_reason=request.getParameter("feedback");
		String bankname=request.getParameter("BankName");
		String ifsc=request.getParameter("Ifsc");
		String bank_acc=request.getParameter("Bank_AcNo");
		String date=request.getParameter("Date");
		
		Return_Products obj= new Return_Products(pid, orderno, name, email, return_reason, bankname, ifsc, bank_acc, date);
		int i=Model.Model_Return_Prdct.Return_Poduct(obj);
		
		if(i==1)
		{
			String mssg="Your refund process has been inititated.You will receive your refund in you specified Account Number within 24 hours";
			response.sendRedirect("User_MyOrder.jsp?Message="+mssg);
		}
		else
		{
			String mssg="Some error occured.Please Try Another";
			response.sendRedirect("User_MyOrder.jsp?Message="+mssg);
		}
	}

}

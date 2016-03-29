package Retailer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Men_Color;
import Bean.Retailer_Men_Color;
import Bean.Retailer_Men_Prdct;


@WebServlet("/Retailer_Men_InsertColor")
public class Retailer_Men_InsertColor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//Color Insert
		
		try {
			
			String Product_Id=request.getParameter("Product_Id");

			String Color1="";
			int Quantity1=0;
			
			String Color2="";
			int Quantity2=0;
			
			String Color3="";
			int Quantity3=0;
			
			String Color4="";
			int Quantity4=0;
			
			String Color5="";
			int Quantity5=0;
			
 
			
			/*if(Color1=="" && Quantity1==0 && Color2=="" && Quantity2==0 && Color3=="" && Quantity3==0 && Color4=="" && Quantity4==0 && Color5=="" && Quantity5==0)
			{
				String mssg="Row cannot be inserted.Insert atleast one color and quantity for the product.";
				response.sendRedirect("Retailer_Men_InsertPrdct.jsp?Mssg="+mssg);	
				
			}
			*/
			if(request.getParameter("Color1")!="" && request.getParameter("Quantity1")!="")
			{
			  Color1=request.getParameter("Color1");
			  Quantity1 = Integer.parseInt(request.getParameter("Quantity1"));
			}
        
			if(request.getParameter("Color2")!="" && request.getParameter("Quantity2")!="")
			{
			 Color2=request.getParameter("Color2");
			 Quantity2 = Integer.parseInt(request.getParameter("Quantity2"));
			}
			 
			if(request.getParameter("Color3")!="" && request.getParameter("Quantity3")!="")
			{
			 Color3=request.getParameter("Color3");
			 Quantity3 = Integer.parseInt(request.getParameter("Quantity3"));
			}
			
			if(request.getParameter("Color4")!="" && request.getParameter("Quantity4")!="")
			{
		     Color4=request.getParameter("Color4");
		     Quantity4 = Integer.parseInt(request.getParameter("Quantity4"));
			}
			
			
			if(request.getParameter("Color5")!="" && request.getParameter("Quantity5")!="")
			{
			 Color5=request.getParameter("Color5");
			 Quantity5=Integer.parseInt(request.getParameter("Quantity5"));
			}
			

			
			
			int i=0;
			String msg="";
			
			
			if(Color1!="" && Quantity1!=0)
			{
				Retailer_Men_Color obj=new Retailer_Men_Color(Product_Id, Color1, Quantity1);
				 i=Model.Model_Retailer_Men_Prdct.Insert_Color(obj,Color1);
				 if(i==0)
				 {
					 msg=Color1+" ";
				 }
			}
			
			if(Color2!="" && Quantity2!=0)
			{
				Retailer_Men_Color obj=new Retailer_Men_Color(Product_Id, Color2, Quantity2);
				 i=Model.Model_Retailer_Men_Prdct.Insert_Color(obj,Color2);
				 if(i==0)
				 {
					 msg=msg+Color2+" ";
				 }
			}
			
			if(Color3!="" && Quantity3!=0)
			{
				Retailer_Men_Color obj=new Retailer_Men_Color(Product_Id, Color3, Quantity3);
				 i=Model.Model_Retailer_Men_Prdct.Insert_Color(obj,Color3);
				 if(i==0)
				 {
					 msg=msg+Color3+" ";
				 }
			}
			if(Color4!="" && Quantity4!=0)
			{
				Retailer_Men_Color obj=new Retailer_Men_Color(Product_Id, Color4, Quantity4);
				i=Model.Model_Retailer_Men_Prdct.Insert_Color(obj,Color4);
				if(i==0)
				 {
					 msg=msg+Color4+" ";
				 }
			}
			if(Color5!="" && Quantity5!=0)
			{
				Retailer_Men_Color obj=new Retailer_Men_Color(Product_Id, Color5, Quantity5);
				i=Model.Model_Retailer_Men_Prdct.Insert_Color(obj,Color5);
				if(i==0)
				 {
					 msg=msg+Color5+" ";
				 }
			}
			
			if(Quantity1!=0 || Quantity2!=0 || Quantity3!=0 || Quantity4!=0 || Quantity5!=0 )
			{
				int k=Model.Model_Retailer_Men_Prdct.InsertTotalQuantity(Product_Id);
			}
			
			String ms="";
			 
			if(i==-1)
			{
				 ms=msg+ "Color Already exists ";
				
			}
			
			else if(i==-2)
			{
				 ms="More than 5 colors cannot be inserted";
				
			}
			else
			{
				 ms="Row inserted successfully";
				
			}
			response.sendRedirect("Retailer_Men_InsertPrdct.jsp?Mssg="+ms);	
		} 
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

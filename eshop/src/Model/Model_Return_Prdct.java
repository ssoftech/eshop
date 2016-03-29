package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.Conct;
import Bean.Return_Products;

public class Model_Return_Prdct 
{
   public static int Return_Poduct(Return_Products obj)
   {
	   int i=0;
	   try {
		Connection con=Conct.conect();
		   String sql="Insert into return_prdcts(Product_Id, Order_No, Name, Email, Return_Reason, BankName, Ifsc, Bank_Acc_No, Date) values(?,?,?,?,?,?,?,?,?)";
		   PreparedStatement ps=con.prepareStatement(sql);
		   ps.setString(1, obj.getProduct_Id());
		   ps.setString(2, obj.getOrder_No());
		   ps.setString(3, obj.getName());
		   ps.setString(4, obj.getEmail());
		   ps.setString(5, obj.getReturn_Product());
		   ps.setString(6, obj.getBank_Name());
		   ps.setString(7, obj.getIfsc_Code());
		   ps.setString(8, obj.getBank_Acc());
		   ps.setString(9, obj.getDate());
		   
		   i=ps.executeUpdate();
	   
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	   
	   return i;
   }
}

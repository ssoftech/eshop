package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import Bean.Conct;
import Bean.User_Feedback;

public class Model_UserFeedback
{
   public static int Feedback(User_Feedback obj)
   {
	   int i=0;
	   try
		{
			Connection con=Conct.conect();
			String sql="Insert into user_feedback(Full_Name,Email,Feedback,Product_Id,Date) values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getName());
			ps.setString(2, obj.getEmail());
			ps.setString(3, obj.getFeedback());
			ps.setString(4, obj.getProduct_Id());
			ps.setString(5, obj.getDate());
			
			i=ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	 
	   return i;
	   
   }
}

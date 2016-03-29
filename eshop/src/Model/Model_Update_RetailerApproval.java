package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import Bean.Conct;


public class Model_Update_RetailerApproval 
{
public static int Update(String Email, String Status)
  {
	  int i=0;
	  try {
		  
		  String status=Status;
		  Connection con=Conct.conect();
		  String sql="Update pending_retls_approval set Status=? where Email=?";
		  PreparedStatement ps= con.prepareStatement(sql);
		  ps.setString(1, status );
		  ps.setString(2, Email);
		  
		  i=ps.executeUpdate();	  
		  
		  String Phone="";
		  String firstname="";
		  String sql2="Select PhoneNo, FirstName from pending_retls_approval where Email=?";
			PreparedStatement ps2= con.prepareStatement(sql2);
			ps2.setString(1, Email);
			ResultSet rs2=ps2.executeQuery();
			if(rs2.next())
			{
				Phone=rs2.getString("PhoneNo");
				firstname=rs2.getString("FirstName");
			}
		if(status.equals("Approved"))
		{
			
			
			
			 Phone=Phone.substring(0, 6);
			String password=firstname+Phone;
			
			String Retailer_Id="";
			Connection con23=Conct.conect();
			String sql23="Select count(RetailerId) from retailer_register";
			PreparedStatement ps23=con23.prepareStatement(sql23);
			ResultSet rs23=ps23.executeQuery();
			if(rs23.next())
			{
				int count=rs23.getInt(1);
				System.out.println("Value of count is"+count);
				if(count>1)
				{
				String sql6="Select RetailerId from retailer_register order by RetailerId Desc Limit 1";
				PreparedStatement ps6=con23.prepareStatement(sql6);
				ResultSet rs6=ps6.executeQuery();
				if(rs6.next())
				{
				    Retailer_Id=rs6.getString("RetailerId");
				    System.out.println("Retailer Id is"+Retailer_Id);
					int length=Retailer_Id.length();
					System.out.println("Length is"+length);
					Retailer_Id=Retailer_Id.substring(6, length);
					System.out.println("Retailer_Id is"+Retailer_Id);
					int k=Integer.parseInt(Retailer_Id);
					k=k+1;
					Retailer_Id="RTL000"+k;
					
				}
				
				
			}
				if(count==1)
				{
					int k=1;
					Retailer_Id="RTL000"+k;
				}
			}
			
            String to=Email ;
			
			String subj="Your Password is "+password+"  Your Retailer_Id is"+Retailer_Id;
			
				
				  //Get the session object  
				  Properties props = new Properties();  
				  props.setProperty("mail.smtp.host", "smtp.mail.yahoo.com");  
				  props.setProperty("mail.smtp.auth", "true");
				  props.setProperty("mail.smtp.starttls.enable", "true");
				   
				  Session session = Session.getInstance(props,new javax.mail.Authenticator() {  
					   protected PasswordAuthentication getPasswordAuthentication() {  
					   return new PasswordAuthentication("sanjayroy84@yahoo.com","Papai_89");//change accordingly 
					   
					   } 
					  });  
				   
				  //compose message  
				  try {  
					  
				   MimeMessage message = new MimeMessage(session);  
				   message.setFrom(new InternetAddress("sanjayroy84@yahoo.com"));//change accordingly  
				   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
				   message.setSubject("Your Login Credentials for Dukaan.com");  
				   message.setText(subj);  
				     
				   //send message  
				   Transport.send(message); 
			       
				  
				   String sql4="Update retailer_register set RetailerId=?, Password=? where Email=? ";
				   PreparedStatement ps4=con.prepareStatement(sql4);
				   ps4.setString(1,Retailer_Id );
				   ps4.setString(2, password );
				   ps4.setString(3, Email);
			 
				  i= ps4.executeUpdate();
				  
				  }
				  catch (Exception  e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		  
		} 
	 
	  }catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return i;
  }
}

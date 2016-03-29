package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;  

import javax.mail.*;  
import javax.mail.internet.*;   

import Bean.Admin_Register;
import Bean.Conct;
public class Login_OTP 
{
 
	public static int SendEmail (Admin_Register ob)
	{
		int j=0;
		
		String to=ob.getEmail() ;
		String subj=Model.OTP_Generate.OTP_Generator();
		
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
		   message.setSubject("Coded by Sanjay Roy");  
		   message.setText(subj);  
		     
		   //send message  
		   Transport.send(message); 
		   int i=0;
		   Connection con=Conct.conect();
		   try {
			
			String sql="Insert into Login_Otp(Email_Id,Otp) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, to);
			ps.setString(2, subj);
			
			i=ps.executeUpdate();
			
			
			   
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		   System.out.println("message sent successfully");  
		   j=1;
		   
		  } 
		  catch (MessagingException e) 
		  {
			  throw new RuntimeException(e);
		  }  
		   
		return j;
		
	}
	
}

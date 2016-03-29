package Bean;

public class User_Feedback
{
   private  String name;
   private String email;
   private String feedback;
   private String date;
   private String Product_Id;

   
   //Constructors
   public User_Feedback(String name, String email, String feedback, String date, String product_Id)
   {
   	super();
   	this.name = name;
   	this.email = email;
   	this.feedback = feedback;
   	this.date = date;
   	Product_Id = product_Id;
   }


   //Setters and Getters
public String getName()
{
	return name;
}




public String getProduct_Id()
{
	return Product_Id;
}


public void setProduct_Id(String product_Id)
{
	Product_Id = product_Id;
}


public void setName(String name)
{
	this.name = name;
}


public String getEmail()
{
	return email;
}


public void setEmail(String email)
{
	this.email = email;
}


public String getFeedback()
{
	return feedback;
}


public void setFeedback(String feedback)
{
	this.feedback = feedback;
}


public String getDate()
{
	return date;
}


public void setDate(String date)
{
	this.date = date;
}

}

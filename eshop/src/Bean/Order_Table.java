package Bean;

public class Order_Table 
{
   private int Order_No;
   private String Customer_Name;
   private String Email;
   private String PhoneNo;
   private String Order_Date;
   private Double Order_Amount;

   
   //Constructors
   public Order_Table(int order_No, String customer_Name, String email, String phoneNo, String order_Date,
			Double order_Amount) {
		super();
		Order_No = order_No;
		Customer_Name = customer_Name;
		Email = email;
		PhoneNo = phoneNo;
		Order_Date = order_Date;
		Order_Amount = order_Amount;
	}


   //Getters And Setters
public int getOrder_No() {
	return Order_No;
}




public void setOrder_No(int order_No) {
	Order_No = order_No;
}


public String getCustomer_Name() {
	return Customer_Name;
}


public void setCustomer_Name(String customer_Name) {
	Customer_Name = customer_Name;
}


public String getEmail() {
	return Email;
}


public void setEmail(String email) {
	Email = email;
}


public String getPhoneNo() {
	return PhoneNo;
}


public void setPhoneNo(String phoneNo) {
	PhoneNo = phoneNo;
}


public String getOrder_Date() {
	return Order_Date;
}


public void setOrder_Date(String order_Date) {
	Order_Date = order_Date;
}


public Double getOrder_Amount() {
	return Order_Amount;
}


public void setOrder_Amount(Double order_Amount) {
	Order_Amount = order_Amount;
}



   
   
   
}

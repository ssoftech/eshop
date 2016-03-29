package Bean;

import java.io.Serializable;

public class Cart_Shopping implements Serializable
{
 

	private static final long serialVersionUID = 1L;
private String Product_Id;
  private String Brand;
  private String Tagline;
  private String Color;
  private Double Price;
  private int Quantity;
  private String Delivery_Date;
  private String Email_Id;
  private String Phone_No;
  private Double Total_Price;
  private String filename;
//Constructors

//Constructors for Product Show By Id

public Cart_Shopping(String Product_id,String brand, String tagline, String color, Double price, int quantity, String delivery_Date,
		String email_Id, Double total_Price) {
	super();
	Product_Id=Product_id;
	Brand = brand;
	Tagline = tagline;
	Color = color;
	Price = price;
	Quantity = quantity;
	Delivery_Date = delivery_Date;
	Email_Id = email_Id;
	Total_Price = total_Price;
}


public String getEmail_Id() {
	return Email_Id;
}


public String getPhone_No() {
	return Phone_No;
}


public Cart_Shopping(String product_Id, String brand, String tagline,
		String color, Double price, int quantity, String delivery_Date,
		String email_Id, String phone_No, Double total_Price, String filename) {
	super();
	Product_Id = product_Id;
	Brand = brand;
	Tagline = tagline;
	Color = color;
	Price = price;
	Quantity = quantity;
	Delivery_Date = delivery_Date;
	Email_Id = email_Id;
	Phone_No = phone_No;
	Total_Price = total_Price;
	this.filename = filename;
}


public Cart_Shopping() {
	
}

public Cart_Shopping(String product_Id, String brand, String tagline, Double price, Double total_Price)
{
	
	Product_Id = product_Id;
	Brand = brand;
	Tagline = tagline;
	Price = price;
	Total_Price = total_Price;
}

public String getFilename() {
	return filename;
}


public void setFilename(String filename) {
	this.filename = filename;
}


public int getQuantity() {
	return Quantity;
}


public void setQuantity(int quantity) {
	Quantity = quantity;
}


public Double getTotal_Price()
{
	return Total_Price;
}



public void setEmail_Id(String email_Id) {
	Email_Id = email_Id;
}


public void setPhone_No(String phone_No) {
	Phone_No = phone_No;
}


public void setTotal_Price(Double total_Price) {
	Total_Price = total_Price;
}


//Setters And Getters
public String getProduct_Id()
{
	return Product_Id;
}



public void setProduct_Id(String product_Id)
{
	Product_Id = product_Id;
}

public String getBrand()
{
	return Brand;
}

public void setBrand(String brand)
{
	Brand = brand;
}

public String getTagline()
{
	return Tagline;
}

public void setTagline(String tagline)
{
	Tagline = tagline;
}

public Double getPrice()
{
	return Price;
}

public void setPrice(Double price)
{
	Price = price;
}

public String getColor() {
	return Color;
}

public void setColor(String color) {
	Color = color;
}

public String getDelivery_Date() {
	return Delivery_Date;
}

public void setDelivery_Date(String delivery_Date) {
	Delivery_Date = delivery_Date;
}



}



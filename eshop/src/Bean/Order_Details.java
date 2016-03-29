package Bean;

public class Order_Details 
{
   private int Order_No;
   private String Product_Id;
   private String BrandName;
   private String Category;
   private int Quantity;
   private Double Price;

   
   //Constructors
   public Order_Details() {
		super();
	  }

   
   public Order_Details(int order_No, String product_Id, String brandName, int quantity, Double price) {
	super();
	Order_No = order_No;
	Product_Id = product_Id;
	BrandName = brandName;
	Quantity = quantity;
	Price = price;
}


//Setters And Getters
   
   
 
public int getOrder_No() {
	return Order_No;
}
public void setOrder_No(int order_No) {
	Order_No = order_No;
}
public String getProduct_Id() {
	return Product_Id;
}
public void setProduct_Id(String product_Id) {
	Product_Id = product_Id;
}
public String getBrandName() {
	return BrandName;
}
public void setBrandName(String brandName) {
	BrandName = brandName;
}
public String getCategory() {
	return Category;
}
public void setCategory(String category) {
	Category = category;
}

public int getQuantity() {
	return Quantity;
}


public void setQuantity(int quantity) {
	Quantity = quantity;
}


public Double getPrice() {
	return Price;
}
public void setPrice(Double totalPrice) {
	Price = totalPrice;
}
  
 
  
  
   
   
}

package Bean;

public class Return_Products 
{
    private String Product_Id;
    private String Order_No;
    private String Name;
    private String Email;
    private String Return_Product;
    private String Bank_Name;
    private String Ifsc_Code;
    private String Bank_Acc;
    private String Date;
	
    
    
    //Constructors
    public Return_Products(String product_Id, String order_No, String name,
			String email, String return_Product, String bank_Name,
			String ifsc_Code, String bank_Acc, String date) {
		super();
		Product_Id = product_Id;
		Order_No = order_No;
		Name = name;
		Email = email;
		Return_Product = return_Product;
		Bank_Name = bank_Name;
		Ifsc_Code = ifsc_Code;
		Bank_Acc = bank_Acc;
		Date = date;
	}

    //Setters And Getters

	public String getProduct_Id() {
		return Product_Id;
	}



	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}



	public String getOrder_No() {
		return Order_No;
	}



	public void setOrder_No(String order_No) {
		Order_No = order_No;
	}



	public String getName() {
		return Name;
	}



	public void setName(String name) {
		Name = name;
	}



	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
		Email = email;
	}



	public String getReturn_Product() {
		return Return_Product;
	}



	public void setReturn_Product(String return_Product) {
		Return_Product = return_Product;
	}



	public String getBank_Name() {
		return Bank_Name;
	}



	public void setBank_Name(String bank_Name) {
		Bank_Name = bank_Name;
	}



	public String getIfsc_Code() {
		return Ifsc_Code;
	}



	public void setIfsc_Code(String ifsc_Code) {
		Ifsc_Code = ifsc_Code;
	}



	public String getBank_Acc() {
		return Bank_Acc;
	}



	public void setBank_Acc(String bank_Acc) {
		Bank_Acc = bank_Acc;
	}



	public String getDate() {
		return Date;
	}



	public void setDate(String date) {
		Date = date;
	}
    

    
    
    
    
}

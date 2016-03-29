package Bean;

public class Retailer_Men_Color 
{
	private String Product_Id;
	private String Color;
	private int Quantity;
	private int Color_Id;
	private int TotalQuantity;
	
	//Constructors
	public Retailer_Men_Color(String product_Id, String color, int quantity) {
		super();
		Product_Id = product_Id;
		Color = color;
		Quantity = quantity;
	}
	
	

	public Retailer_Men_Color(String product_Id, String color, int quantity,
			int color_Id) {
		super();
		Product_Id = product_Id;
		Color = color;
		Quantity = quantity;
		Color_Id = color_Id;
	}
	

	public Retailer_Men_Color(String product_Id) {
		super();
		Product_Id = product_Id;
	}


	public Retailer_Men_Color(String product_Id, int totalQuantity) {
		super();
		Product_Id = product_Id;
		TotalQuantity = totalQuantity;
	}



	//Getters And Setters
	
	public String getProduct_Id() {
		return Product_Id;
	}

	public void setProduct_Id(String product_Id) {
		Product_Id = product_Id;
	}

	public String getColor() {
		return Color;
	}

	public int getColor_Id() {
		return Color_Id;
	}

	public void setColor_Id(int color_Id) {
		Color_Id = color_Id;
	}

	public void setColor(String color) {
		Color = color;
	}

	public int getQuantity() {
		return Quantity;
	}

	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	
	public int getTotalQuantity() {
		return TotalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		TotalQuantity = totalQuantity;
	}
}
